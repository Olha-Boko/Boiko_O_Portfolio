<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="main.css">
    <title>Contact form<</title>
</head>
<body>
<div class="contact-form">
        <form id="contactForm" action="data/contact.php" method="post">
            <h1>Contact Form</h1>
            <div class="formIn">
                <label for="name">Name</label>
				<input type="text" required id="name" name="name" size="40" placeholder="Your Name" class="formInput formName">
			</div>

            <div class="formIn">
                <label for="last_name">Last Name</label>
				<input type="text" required id="last_name" name="last_name" size="40" placeholder="Your Last Name" class="formInput formName">
			</div>
		
            <div class="formIn">
                <label for="emailAddress">Email</label>
				<input type="email" name="email" required id="emailAddress" size="40" placeholder="Your Email" class="formInput formEmail">
            </div>
            
            <div class="formIn">
                <label for="subject-field">Subject</label>
                <input id="subject-field" name="subject" type="text" placeholder="Subject" class="formInput formSubject">
            </div>

            <div class="formIn">
                <label for="comments">Message</label>
				<textarea id="comments" name="comments" rows="5" cols="40" placeholder="Message" class="formInput formText"></textarea>
			</div>

            <div id="buttonForm">
				<button type="submit" class="buttonForForm" name="button">Send</button>
			</div>

		</form>
    </div>   

</body>
</html>