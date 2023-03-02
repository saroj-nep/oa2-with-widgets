<?php

if (isset($_POST['text_input'])) {

    if (isset($_POST['text_input'])) {
        $line = $_POST['text_input'];
        $host = "127.0.0.1";
        $port = 25005;

        $socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP) or die("Could not create socket\n");
        $result = socket_connect($socket, $host, $port) or die("Could not connect to server\n");
        while (true) {

            socket_write($socket, $line, strlen($line)) or die("Could not send data to server\n");
            $pythondata = socket_read($socket, 64000) or die("Could not read server response\n");

            // Output the value of $pythondata as a JavaScript variable
            echo "<script> var pythondata = '" . $pythondata . "'; </script>";
            echo "<script> var pythondata2 = '" . $pythondata . "'; </script>";
            file_put_contents('pythonoutput.csv', $pythondata . "\n", FILE_APPEND);


            break;
        }
    }
}
?>