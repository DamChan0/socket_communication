#ifndef CLIENT_H
#define CLIENT_H

#include <arpa/inet.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>

#include <iostream>

class Client {
 public:
  Client(const std::string& server_address, int port);
  void run();

 private:
  int client_socket_;
  sockaddr_in server_addr_;
};

#endif  // CLIENT_H
