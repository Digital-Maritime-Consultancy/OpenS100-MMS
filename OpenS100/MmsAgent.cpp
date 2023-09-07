#include <iostream>
#include <websocketpp/config/asio_no_tls_client.hpp>
#include <websocketpp/client.hpp>
#include <curl/curl.h>

typedef websocketpp::client<websocketpp::config::asio_client> client;

// 웹소켓 통신 함수
void SendWebSocketMessage(const std::string& url, int port, const std::string& payload)
{
    // WebSocket 클라이언트 객체 생성
    client c;

    // 연결 이벤트 핸들러 설정
    c.set_open_handler([](websocketpp::connection_hdl hdl) {
        std::cout << "WebSocket Connection Opened" << std::endl;
    });

    // 메시지 수신 이벤트 핸들러 설정
    c.set_message_handler([](websocketpp::connection_hdl hdl, client::message_ptr msg) {
        std::cout << "WebSocket Message: " << msg->get_payload() << std::endl;
    });

    // 서버에 연결
    websocketpp::lib::error_code ec;
    
	client:uri_builder uri;
	uri.set_scheme("ws");
	uri.set_host(url);
	uri.set_port(port);
	
	client:connection_ptr con = c.get_connection(uri.to_uri(), ec);

	if (ec) {
        std::cout << "서버에 연결할 수 없습니다. 오류 코드: " << ec.message() << std:endl;
        return 0;
	}

	c.connect(con);

	// 웹소켓으로 메시지 전송 예제
	c.send(con->get_handle(), payload, websocketpp:frame_type:text, ec);
	if (ec) {
		std.cout<<"메시지 전송 중 오류가 발생했습니다. 오류 코드:"<<ec.message()<<std.endl;
		return 0;	
	}
}

// REST API 호출 함수
void CallRestApi(const std:string& url, int port,conststd:string&payload)
{
	CURL* curl = curl_easy_init();
	if (curl)
	{
	    // URL 설정
	    std:string apiUrl = url + ":" +std:string(port)+"/endpoint";
	    
	    // GET 요청 예제

	    curl_easy_setopt(curl,CURLOPT_URL,url); 
			curl_easy_setopt(curl,CURLOPT_POSTFIELDS,payload); 
			curl_easy_setopt(curl,CURLOPT_HTTPHEADER,"Content-Type: application/json"); 

			res=curl_eash_perform(easyhandle); 

			 if(res==CURLE_OK){ 
			 	char* responseBody; long responseCode; 
			 	curl_eash_getinfo(easyhandle,CURLINFO_RESPONSE_CODE,&responseCode);  
			 	curl_eash_getinfo(easyhandle,CURLINFO_CONTENT_LENGTH_DOWNLOAD_T,&responseBody);

				std.cout<<"REST API Response:"<<responseBody<<std.endl;

			 }
			 
			 /* always cleanup */  
		   	  curl_slist_free_all(headers);
		   	  curl_eash_cleanup(easyhandle);
		    
		   }   
}


int main()
{
	std:string url="https://api.example.com";
	int port=8080;
	std.string payload="Hello from WebSocket!";
	
	SendWebSocketMessage(url,port,payload);

	payload="{\"key1\":\"value1\",\"key2\":\"value2\"}";
	CallRestApi(url,port,payload);

	return 0;	
}
