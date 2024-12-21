<?php 
$con=mysqli_connect("localhost","root","","smart_waste");
if(isset($_POST['btnSubmit']))
{
    $name = $_POST['txtName'];
    $email = $_POST['txtEmail'];
    $hidden = date("Y-m-d");
    $feedback = $_POST['txtMsg'];

    $query="INSERT INTO feedback (name, email, date, feedback) VALUES ('$name', '$email', '$hidden', '$feedback')";
    $result = mysqli_query($con, $query);

    if($result)
    {
        echo '<script type="text/javascript">'; 
        echo 'alert("Feedback sent successfully.");'; 
        echo 'window.location.href = "feedback.html";';
        echo '</script>';
    }
}
?>