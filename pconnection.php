<?php
$host    = "127.0.0.1";
$port    = 25003;
$line= 'Hi';
$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP) or die("Could not create socket\n");
$result = socket_connect($socket, $host, $port) or die("Could not connect to server\n"); 
while(true) {



socket_write($socket, $line, strlen($line)) or die("Could not send data to server\n");
$result = socket_read ($socket, 1024) or die("Could not read server response\n");
echo $result;

}
socket_close($socket);
?>