<?php

$name = $_POST['name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$quantity = isset($_POST['quantity']) ? $_POST['quantity'] : '';  // Check if 'quantity' is set, otherwise default to an empty string
$address = $_POST['address'];
$hidden = date("Y-m-d");
$message = $_POST['message'];
$option = $_POST['MyDoctor'];
$hostname = "localhost";
$username = "root";
$password = "";
$database = "smart_waste";

$conn = new mysqli($hostname, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO waste_collection (name, phone, email, quantity, address, date, message, waste_type)
        VALUES ('$name', '$phone', '$email', '$quantity', '$address', '$hidden', '$message','$option')";

if ($conn->query($sql) === TRUE) {
    echo "Slot booked successfully..............";
} 
else {
    echo "Error Try Again: " . $sql . "<br>" . $conn->error;
}
$conn->close();


?>
