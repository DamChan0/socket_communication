#ifndef SERVER_H
#define SERVER_H

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>

#include <iostream>
#include <thread>

class Server {
 public:
  Server(int port);
  void run();

 private:
  int server_socket_;
  sockaddr_in server_addr_;
};

#endif  // SERVER_H
