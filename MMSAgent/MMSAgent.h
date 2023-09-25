#pragma once

#include "pch.h";
#include "mmtp.pb.h";
#include <ixwebsocket/IXWebSocket.h>

#ifndef UUID_SYSTEM_GENERATOR
#define UUID_SYSTEM_GENERATOR 1
#endif // !UUID_SYSTEM_GENERATOR

#include <stduuid/uuid.h>;

class MMSAgent
{
public:
	MMSAgent(std::string mrn, std::string url, const std::function<void(MmtpMessage&)> callBack);
	~MMSAgent();
	bool SendConnect();
	bool SendMmtpMessage(MmtpMessage *mmtpMessage);
	bool SubscribeToDirectMessages();
	bool SubscribeToSubject(std::string subject);
private:
	ix::WebSocket mWebSocket;
	std::string mMrn;
	uuid_system_generator mUuidGenerator;
	bool connected;
	MmtpMessage* lastSentMessage;
};

