

<?php
$host = "203.161.63.214";
$port = 12345;

// Create socket
$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);

// Bind the socket to a specific address and port
socket_bind($socket, $host, $port);

// Listen for incoming connections
socket_listen($socket);

echo "Server listening on $host:$port\n";

while (true) {
    // Accept incoming connection
    $clientSocket = socket_accept($socket);

    // Read data from the client
    $data = socket_read($clientSocket, 1024);

    // Process data (you can replace this with your logic)
    echo "Received: $data\n";

    // Send a response back to the client
    $response = "Hello, client!";
    socket_write($clientSocket, $response, strlen($response));

    // Close the client socket
    socket_close($clientSocket);
}

// Close the server socket
socket_close($socket);
?>