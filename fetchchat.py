import socket


def server_program():
    host = "127.0.0.1"
    port = 25005

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((host, port))
    server_socket.listen(5)
    conn, address = server_socket.accept()

    while True:
        
        data = conn.recv(1024).decode()
        print(data)
        conn.send(b' oi')
        server_socket.close() 
        server_program()


if __name__ == '__main__':
    server_program()
