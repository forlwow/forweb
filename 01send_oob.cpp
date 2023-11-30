#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <iostream>
#include <string.h>

int main(int argc, char *argv[]){
    if (argc <= 2) {
        std::cout << "error 1" << std::endl;
        return 1;
    }
    const char *ip = argv[1];
    int port = atoi(argv[2]);

    ip = "127.0.0.1";
    port = 6789;

    struct sockaddr_in server_address;
    bzero(&server_address, sizeof server_address);
    server_address.sin_family = AF_INET;
    inet_pton(AF_INET, ip, &server_address.sin_addr);
    server_address.sin_port = htons(port);
    int sockfd = socket(PF_INET, SOCK_STREAM, 0);
    assert(sockfd >= 0);

    if (connect(sockfd, (struct sockaddr*)&server_address, sizeof server_address) < 0){
        printf("connect failed\n");
        return 2;
    }
    const char *oob_data = "abc";
    const char *normal_data = "123";
    send(sockfd, normal_data, strlen(normal_data), 0);
    send(sockfd, oob_data, strlen(oob_data), MSG_OOB);
    send(sockfd, normal_data, strlen(normal_data), 0);

    close(sockfd);
    return 0;

}