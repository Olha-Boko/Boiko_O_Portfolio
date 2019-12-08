<?php 

#var_dump($_GET);

#var_dump($_POST['name']);
if(empty($_POST)){
    echo 'No...';
    exit;
}

    $name = '';
    $last_name = '';
    $email = '';
    $subject = '';
    $comments = '';
    $recipient = 'olhaboko@gmail.com';

    if(isset($_POST['name'])){
        $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    }

    if(isset($_POST['last_name'])){
        $last_name = filter_var($_POST['last_name'], FILTER_SANITIZE_STRING);
    }

    if (isset($_POST['email'])){
        $email = str_replace(array("\r","\n","%0a","%0d"),'',$_POST['email']);
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    }

    if (isset($_POST['subject'])){
        $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
    }

    if (isset($_POST['comments'])){
        $comments = $_POST['comments'];
    }

    $headers = [
        'From'=>'noreply@test.ca',
        'Reply-To'=>$name.'<'.$email.'>'
    ];

    if(mail($recipient, $subject, $comments, $headers)){
        echo '<p>Thank you for contacting me,'.$name.'. You will get a reply writtin 24 hours!</p>';
    }else{
        echo '<p>We are sorry but the email did not go through...</p>';
    }

?>