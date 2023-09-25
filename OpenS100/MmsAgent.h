#pragma once

#include <string>
#include <vector>
#include <ixwebsocket/IXWebSocket.h>
#include "./mmtp.pb.h"

enum class AgentState {
    NOTCONNECTED = 0,
    CONNECTED = 1,
    AUTHENTICATED = 2
};

class CMMSAgent {
public:
    std::string Mrn;
    std::vector<std::string> Interests;
    // Assuming MmtpMessage is a struct or class that exists in your codebase.
    std::map<std::string, MmtpMessage*> Messages;

    std::string reconnectToken;

    std::string m_url;
    // Our websocket object
    

private:
    AgentState state;

    // Assuming websocket.Conn is a valid type in your codebase.
    ix::WebSocket webSocket;

public:
    CMMSAgent();
    ~CMMSAgent();

    ResponseEnum connectAuthenticated(const std::string& url);
    AgentState status();
    ResponseEnum connectAnonymous(const std::string& url);
    ResponseEnum authenticate();
    ResponseEnum disconnect();
    ResponseEnum send(const std::string& mrnOrSubject, const bool isBroadcast, const std::vector<uint8_t>& data);
    ResponseEnum receive();
    ResponseEnum subscribe(const std::string& subject);
    ResponseEnum unsubscribe(const std::string& message);


private:
    MmtpMessage readMessage(ix::WebSocket& websocket);
    void writeMessage(ix::WebSocket& websocket);
    MmtpMessage writeAndReadMessage(ix::WebSocket& websocket);
    void connectWS(const std::string& url);
    void disconnectWS();
    MmtpMessage connectOverMMTP();
    MmtpMessage connectAnonymousOverMMTP();
    MmtpMessage disconnectOverMMTP();
};