
#include <iostream>
#include <thread>

#include "client.h"
#include "server.h"

int main() {
  // 서버 스레드 시작
  std::thread server_thread([&]() {
    Server server(10001);
    server.run();
  });

  // 클라이언트 실행
  Client client("127.0.0.1", 10001);
  client.run();

  // 서버 스레드 종료 대기
  server_thread.join();

  return 0;
}
