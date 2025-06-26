<?php
include_once('db_connection.php');
include_once('session.php');
include_once('redirect.php');

// Get email and password from form
$email = $_REQUEST['email'];
$password = $_REQUEST['password'];

// Fetch user by email only
$sql = "SELECT id, user_name, password FROM resume_users WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();

    // ✅ Verify password
    if (password_verify($password, $user['password'])) {
        // ✅ Correct password, log in
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['user_name'] = $user['user_name'];

        // Redirect to account/dashboard
        Redirect('myAccount.php', false);
        exit();
    } else {
        // ❌ Wrong password
        echo "Incorrect password.";
        exit();
    }
} else {
    // ❌ Email not found
    echo "User account not found.";
    exit();
}

$stmt->close();
$conn->close();
?>
