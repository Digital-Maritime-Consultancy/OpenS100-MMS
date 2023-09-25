#include "MMSAgent.h"

MMSAgent::MMSAgent(std::string mrn, std::string url, const std::function<void (MmtpMessage&)> callBack)
{
	this->mMrn = mrn;
	mWebSocket.setUrl(url);

	mWebSocket.setOnMessageCallback([callBack, this](const ix::WebSocketMessagePtr& msgPtr) {
		MmtpMessage mmtpMessage;

		switch (msgPtr->type) {
		case ix::WebSocketMessageType::Message:
			if (mmtpMessage.ParseFromString(msgPtr->str)) {
				if (mmtpMessage.uuid().compare(this->lastSentMessage->uuid()) != 0) {
					std::cout << "UUID in response did not match the one from the last sent message";
				}
			}
		case ix::WebSocketMessageType::Open:
			// Do something
		case ix::WebSocketMessageType::Error:
			// Do something
		}
		callBack(mmtpMessage);
	});

	mWebSocket.start();
}

MMSAgent::~MMSAgent()
{
	mWebSocket.stop();
}

bool MMSAgent::SendConnect()
{
	MmtpMessage mmtpMessage;
	mmtpMessage.set_msgtype(PROTOCOL_MESSAGE);

	auto const id = mUuidGenerator();
	auto uuidStr = to_string(id);
	mmtpMessage.set_uuid(uuidStr);

	ProtocolMessage protocolMessage;
	protocolMessage.set_protocolmsgtype(CONNECT_MESSAGE);

	Connect connect;
	connect.set_ownmrn(this->mMrn);

	protocolMessage.set_allocated_connectmessage(&connect);
	mmtpMessage.set_allocated_protocolmessage(&protocolMessage);

	return SendMmtpMessage(&mmtpMessage);
}

bool MMSAgent::SendMmtpMessage(MmtpMessage* mmtpMessage)
{
	size_t size = mmtpMessage->ByteSizeLong();
	if (size > 0) {
		char* buffer = (char*) malloc(size);
		mmtpMessage->SerializeToArray(buffer, size);
		if (buffer) {
			this->lastSentMessage = mmtpMessage;
			return mWebSocket.sendBinary(buffer).success;
		}
	}
	return false;
}

bool MMSAgent::SubscribeToDirectMessages()
{
	MmtpMessage mmtpMessage;
	mmtpMessage.set_msgtype(PROTOCOL_MESSAGE);

	auto const id = mUuidGenerator();
	auto uuidStr = to_string(id);
	mmtpMessage.set_uuid(uuidStr);

	ProtocolMessage protocolMessage;
	protocolMessage.set_protocolmsgtype(SUBSCRIBE_MESSAGE);

	Subscribe subscribe;
	subscribe.set_directmessages(true);

	protocolMessage.set_allocated_subscribemessage(&subscribe);
	mmtpMessage.set_allocated_protocolmessage(&protocolMessage);

	return SendMmtpMessage(&mmtpMessage);
}

bool MMSAgent::SubscribeToSubject(std::string subject) {
	MmtpMessage mmtpMessage;
	mmtpMessage.set_msgtype(PROTOCOL_MESSAGE);

	auto const id = mUuidGenerator();
	auto uuidStr = to_string(id);
	mmtpMessage.set_uuid(uuidStr);

	ProtocolMessage protocolMessage;
	protocolMessage.set_protocolmsgtype(SUBSCRIBE_MESSAGE);

	Subscribe subscribe;
	subscribe.set_subject(subject);

	protocolMessage.set_allocated_subscribemessage(&subscribe);
	mmtpMessage.set_allocated_protocolmessage(&protocolMessage);

	return SendMmtpMessage(&mmtpMessage);
}