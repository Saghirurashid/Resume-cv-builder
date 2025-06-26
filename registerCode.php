<?php
// Connect to the database
include_once('db_connection.php');

// Get form data from POST request
$userName = $_POST['user_name'];
$email = $_POST['email'];
$password = $_POST['password'];

// Hash the password for security
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Prepare and execute SQL INSERT
$sql = "INSERT INTO resume_users (user_name, email, password) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $userName, $email, $hashedPassword);

if ($stmt->execute()) {
    // ✅ Registration successful — redirect to login page
    header("Location: ../html/login.html");
    exit();
} else {
    // ❌ Registration failed — show error
    echo "Error: " . $stmt->error;
}

// Clean up
$stmt->close();
$conn->close();
?>
