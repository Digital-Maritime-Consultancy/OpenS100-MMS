#pragma once

#include <string>
#include <vector>
#include <ixwebsocket/IXWebSocket.h>

enum class AgentState {
    NOTCONNECTED = 0,
    CONNECTED = 1,
    AUTHENTICATED = 2
};

class CMMSAgent {
public:
    CMMSAgent();
    ~CMMSAgent();

    bool connect(const std::string& url);
    bool disconnect();
    void send(const std::string& mrn, const std::vector<uint8_t>& data);
    std::vector<uint8_t> receive();

private:
    void onMessage(const std::string& message);

private:
    std::string m_url;
    int m_port;
    // Our websocket object
    ix::WebSocket webSocket;
};