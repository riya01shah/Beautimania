<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>
<?php include('header.php'); ?>
<main class="main-body">
    <!-- Your content here -->
</main>
<?php include('footer.php'); ?>
