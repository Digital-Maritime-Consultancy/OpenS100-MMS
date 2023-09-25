#include "pch.h"
#include <iostream>
#include "MMSAgent.h"


CMMSAgent::CMMSAgent(){
}

CMMSAgent::~CMMSAgent() {
    
}

ResponseEnum CMMSAgent::connectAuthenticated(const std::string& url)
{
    return ResponseEnum();
}

AgentState CMMSAgent::status()
{
    return AgentState();
}

ResponseEnum CMMSAgent::connectAnonymous(const std::string& url)
{
    return ResponseEnum();
}

ResponseEnum CMMSAgent::authenticate()
{
    return ResponseEnum();
}

ResponseEnum CMMSAgent::disconnect()
{
    return ResponseEnum();
}

ResponseEnum CMMSAgent::send(const std::string& mrnOrSubject, const bool isBroadcast, const std::vector<uint8_t>& data)
{
    // Send a message to the server (default to TEXT mode)
    webSocket.send("hello world");

    // The message can be sent in BINARY mode (useful if you send MsgPack data for example)
    webSocket.sendBinary("some serialized binary data");
    return ResponseEnum();
}

ResponseEnum CMMSAgent::receive()
{
    return ResponseEnum();
}

ResponseEnum CMMSAgent::subscribe(const std::string& subject)
{
    return ResponseEnum();
}

ResponseEnum CMMSAgent::unsubscribe(const std::string& message)
{
    return ResponseEnum();
}

void CMMSAgent::disconnectWS() {
    webSocket.stop();
}

MmtpMessage CMMSAgent::connectOverMMTP()
{
    return MmtpMessage();
}

MmtpMessage CMMSAgent::connectAnonymousOverMMTP()
{
    return MmtpMessage();
}

MmtpMessage CMMSAgent::disconnectOverMMTP()
{
    return MmtpMessage();
}

MmtpMessage CMMSAgent::readMessage(ix::WebSocket& websocket)
{
    return MmtpMessage();
}

void CMMSAgent::writeMessage(ix::WebSocket& websocket)
{
}

MmtpMessage CMMSAgent::writeAndReadMessage(ix::WebSocket& websocket)
{
    return MmtpMessage();
}

void CMMSAgent::connectWS(const std::string& url) {
    //std::string url("ws://localhost:8080/");
    webSocket.setUrl(url);

    // Optional heart beat, sent every 45 seconds when there is not any traffic
    // to make sure that load balancers do not kill an idle connection.
    webSocket.setPingInterval(60);

    // Per message deflate connection is enabled by default. You can tweak its parameters or disable it
    webSocket.disablePerMessageDeflate();

    // Setup a callback to be fired when a message or an event (open, close, error) is received
    webSocket.setOnMessageCallback([](const ix::WebSocketMessagePtr& msg)
        {
            if (msg->type == ix::WebSocketMessageType::Message)
            {
                std::cout << msg->str << std::endl;
            }
        }
    );

    // Now that our callback is setup, we can start our background thread and receive messages
    webSocket.start();
}
