const express = require('express');
const router = express.Router();

var auth = require('../config/mailcreds');
var mailer = require('nodemailer');

const sql = require('../utils/sql');

// set up the nodemailer 
const transporter = mailer.createTransport({
	service: 'gmail',
	auth: {
		user: auth.user,
		pass: auth.pass
	}
});

router.get('/', (req, res) => {
    res.render('home');
    
})

//hit the about route
router.get('/about', (req, res) => {
    res.render('about');
})

//hit the contact route
router.get('/contacts', (req, res) => {
    res.render('contacts');
})

//hit the portfolio route

router.get('/portfolio', (req, res) => {
     
    let query = "SELECT ID, Type, Heading, ImageSmall FROM tbl_projects";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('portfolio', { data: result });
     })
 })

//our dinamic placeholder
//localhost:3000/1 or 2 or 3 (anything that you put after the / in the localhost)

router.get('/port-pieces/:id', (req, res) => {
   // console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_info WHERE ProjectsID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // send the DB query back to the browser
        res.json(result);
    })
})


//mail-------------------------------------
router.post('/mail', (req, res) => {
	console.log('hit mail route');
	console.log('body: ', req.body);

	// get the mail options from the form -> the url params using bodyParser middleware

	const mailOptions = {
		from: req.body.usermail,
		to: auth.user,
		replyTo: req.body.usermail,
		subject: `From portfolio site: Subject = ${req.body.subject || 'none'}`, // Subject line
		text: req.body.message
	};

	transporter.sendMail(mailOptions, function (err, info) {
		if (err) {
			console.log("failed... ", err);
			res.json(err);
		} else {
			console.log("success! ", info);
			res.json(info);
		}
	});
})


module.exports = router;