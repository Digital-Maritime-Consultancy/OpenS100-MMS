#include "pch.h"
#include <iostream>
#include "MMSAgent.h"


CMMSAgent::CMMSAgent(){
}

CMMSAgent::~CMMSAgent() {
    
}

bool CMMSAgent::disconnect() {
    webSocket.stop();
    return true;
}

bool CMMSAgent::connect(const std::string& url) {
    //std::string url("ws://localhost:8080/");
    webSocket.setUrl(url);

    // Optional heart beat, sent every 45 seconds when there is not any traffic
    // to make sure that load balancers do not kill an idle connection.
    webSocket.setPingInterval(45);

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

    return true;
}

void CMMSAgent::send(const std::string& mrn, const std::vector<uint8_t>& data) {
    // Send a message to the server (default to TEXT mode)
    webSocket.send("hello world");

    // The message can be sent in BINARY mode (useful if you send MsgPack data for example)
    webSocket.sendBinary("some serialized binary data");
}

std::vector<uint8_t> CMMSAgent::receive() {
    std::vector<uint8_t> emptyData;
    return emptyData;
}

