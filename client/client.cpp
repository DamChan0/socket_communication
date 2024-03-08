#include "client.h"

Client::Client(const std::string& server_address, int port) {
  // 서버 주소 및 포트 설정
  server_addr_.sin_family = AF_INET;
  server_addr_.sin_port = htons(port);
  inet_pton(AF_INET, server_address.c_str(), &server_addr_.sin_addr);

  // 소켓 생성
  client_socket_ = socket(AF_INET, SOCK_STREAM, 0);
  if (client_socket_ < 0) {
    std::cerr << "소켓 생성 실패" << std::endl;
    return;
  }
}

void Client::run() {
  // 서버와 데이터 송수신
  char message[1024];

  int connect_result;
  while (!connect_result) {
    // 서버에 연결 요청
    connect_result =
      connect(client_socket_, (sockaddr*)&server_addr_, sizeof(server_addr_));
    if (connect_result < 0) {
      std::cout << "서버 연결 실패" << std::endl;
    }
  }
  if (connect_result) {
    std::cout << "서버 연결 성공" << std::endl;
  }

  while (true) {
    // 키보드 입력
    std::cout << "메시지를 입력하세요 (종료: q): ";
    std::cin.getline(message, sizeof(message));

    // 종료 조건 확인
    if (strcmp(message, "q") == 0) {
      break;
    }

    // 메시지 서버에 전송
    int send_result = send(client_socket_, message, strlen(message), 0);
    if (send_result < 0) {
      std::cerr << "메시지 전송 실패" << std::endl;
      break;
    }

    // 서버로부터 응답 받기
    int recv_result = recv(client_socket_, message, sizeof(message), 0);
    if (recv_result < 0) {
      std::cerr << "응답 수신 실패" << std::endl;
      break;
    }

    // 응답 출력
    std::cout << "서버 응답: " << message << std::endl;
  }

  // 소켓 닫기
  close(client_socket_);
}
