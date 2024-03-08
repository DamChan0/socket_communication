#include "server.h"

Server::Server(int port) {
  // 서버 주소 설정
  server_addr_.sin_family = AF_INET;
  server_addr_.sin_port = htons(port);
  server_addr_.sin_addr.s_addr = INADDR_ANY;

  // 소켓 생성
  server_socket_ = socket(AF_INET, SOCK_STREAM, 0);
  if (server_socket_ < 0) {
    std::cerr << "소켓 생성 실패" << std::endl;
    return;
  }

  // 소켓 바인딩
  int bind_result =
    bind(server_socket_, (sockaddr*)&server_addr_, sizeof(server_addr_));
  if (bind_result < 0) {
    std::cerr << "바인딩 실패" << std::endl;
    return;
  }

  // 리슨 (연결 요청 대기)
  int listen_result = listen(server_socket_, 5);  // 최대 5개의 연결 요청 대기
  if (listen_result < 0) {
    std::cerr << "리슨 실패" << std::endl;
    return;
  }

  std::cout << "서버 실행 중..." << std::endl;
}

void Server::run() {
  while (true) {
    // 클라이언트 연결 수락
    sockaddr_in client_addr;
    socklen_t client_addr_size = sizeof(client_addr);
    int client_socket =
      accept(server_socket_, (sockaddr*)&client_addr, &client_addr_size);
    if (client_socket < 0) {
      std::cerr << "클라이언트 연결 수락 실패" << std::endl;
      break;
    }

    // 클라이언트와 데이터 송수신
    std::thread client_thread([&]() {
      char buffer[1024];
      int recv_size;
      while ((recv_size = recv(client_socket, buffer, sizeof(buffer), 0)) > 0) {
        // 받은 데이터 처리
        std::cout << "받은 데이터: " << buffer << std::endl;

        // 데이터 전송
        send(client_socket, buffer, recv_size, 0);
      }

      // 소켓 닫기
      close(client_socket);
    });

    client_thread.detach();
  }

  // 소켓 닫기
  close(server_socket_);
}
