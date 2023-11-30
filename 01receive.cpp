#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <assert.h>

#define BUF_SIZE 1024

int main(){
    const char *ip = "127.0.0.1";
    int port = 6789;

    struct sockaddr_in address;
    bzero(&address, sizeof address);
    address.sin_family = AF_INET;
    inet_pton(AF_INET, ip, &address.sin_addr);
    address.sin_port = htons(port);
    
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    int ret = bind(sockfd, (struct sockaddr*)&address, sizeof(sockaddr));
    assert(ret != 1);
    ret = listen(sockfd, 5);
    assert(ret != 1);

    struct sockaddr_in client;
    socklen_t client_length = sizeof client;

    int connectfd = accept(sockfd, (struct sockaddr*)&client, &client_length);
    if (connectfd < 0){
        printf("connect error");
        return 1;
    }

    sleep(10);
    char buffer[BUF_SIZE];
    memset(buffer, '\0', BUF_SIZE);
    ret = recv(connectfd, buffer, BUF_SIZE-1, 0);
    printf("receive msg %s \n", buffer);
    memset(buffer, '\0', BUF_SIZE);
    ret = recv(connectfd, buffer, BUF_SIZE-1, MSG_OOB);
    printf("receive oob msg %s \n", buffer);
    memset(buffer, '\0', BUF_SIZE);
    ret = recv(connectfd, buffer, BUF_SIZE-1, 0);
    printf("receive msg %s \n", buffer);
    close(connectfd);
    close(sockfd);

    return 0;
}