// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {

    console.log('fired');
    
        // burger menu 
        var button = document.querySelector("#button");
        var burgerCon = document.querySelector("#burgerCon");
    
        function hamburgerMenu() {
            burgerCon.classList.toggle("slideToggle");
            button.classList.toggle("expanded");
        }
    
        function closeMenu() {
    
            if (window.matchMedia("(min-width: 768px)").matches && burgerCon.classList.contains('slideToggle') ) {
            console.log("media query fired");
            burgerCon.classList.remove('slideToggle');
            button.classList.remove('expanded');
            }
    
        }
    
        button.addEventListener("click", hamburgerMenu, false);
    
        window.addEventListener("resize", closeMenu);



        //---------------------------------------------
    
        // window.onscroll = function() {myFunction()};

        // // Get the navbar
        // var navbar = document.getElementById("mainNav");
        
        // // Get the offset position of the navbar
        // var sticky = navbar.offsetTop;
        
        // // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
        // function myFunction() {
        //   if (window.pageYOffset >= sticky) {
        //     navbar.classList.add("sticky")
        //   } else {
        //     navbar.classList.remove("sticky");
        //   }
        // }  
    
     //--------------------------------------- 


    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.viewbutton'),
        lightbox = document.querySelector('.portfolio-model');

        function parseData(project) { //data is the database result //animation here
            let targetDiv = document.querySelector('.portfolio-content');
            //let targetImg = lightbox.querySelector('img');

            let piecesContent = `
                <img src="../images/${project.ImageBig}">
                <div>
                <h2>${project.ProjectName}</h2>
                <h3>${project.ProjectType}</h3>
                <p>${project.Description}</p>
                </div>
            `;   

            // console.log(thingsContent);

            targetDiv.innerHTML = piecesContent;
            //targetImg.src = project.imgsrc;

            lightbox.classList.add('show-lb');
            //lightbox.style.animation = 'modalAppear 600ms'

        }

    function getPiecesData(event){
        //kill the defult a tag behavior, don't navigate anywhere)
        event.preventDefault();
        //debugger;

        //find the imgage closest to the anhor tag and get its src property
        //let imgSrc = this.previousElementSibling.getAttribute('src');

        let url = `/port-pieces/${this.getAttribute('href')}`; // 1 or 2 or 3

        fetch(url) //go get the data
            .then(res => res.json()) //parse tne json result into a plain object
            .then(data => {
                console.log("my data result is:", data);

                //data[0].imgsrc = imgSrc;

                parseData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });
        

    }  
    
    userButtons.forEach(button => button.addEventListener('click', getPiecesData));

if (lightbox) {
    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    });
}
   


    //-------------------------contact form-------------------------

    const form = document.querySelector('form'), submit = form.querySelector('.buttonFormOne');
    var thanks = document.querySelector('.box-thanks');
    var thanksButt = document.querySelector('.close-thanks');

    function handleMail(event) {
        event.preventDefault();

        // formdata will be the values of the fields the user fills out (the inputs)
        // maildata is an object we'll build and send through with those values

        let formdata = new FormData(form),
            maildata = {};

        // parse the form data (it's an iterable, so you have to do it this way)
        // and populate the maildata object with the input values (the formdata entries)
        for (let [key, value] of formdata.entries()) {
            maildata[key] = value;
        }

        // debugger;

        let url = `/mail`;

        // use the POST superglobal which is more secure than GET, and hit the /mail route in index.js
        // inside the routes folder. this will take in the formdata we're sending, and use that to send our email
        fetch(url, {
            method: 'POST',
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-type': 'application/json'
            },

            body: JSON.stringify(maildata)
        })
            .then(res => res.json())
            .then(data => {
                // remove this when testing is done and everything is working
                console.log(data);

                if (data.response.includes("OK")) {
                    // we successfully sent an email via gmail and nodemailer!
                    // flash success here, reset the form
                    form.reset();
                    thanks.classList.add('thanks-show-lb');
                    thanksButt.addEventListener('click', function() {
                        thanks.classList.remove('thanks-show-lb');
                    })
            
                    // res.render('formThanks');
                    // alert"email was sent!"; 
                    
                }
            }) // this will be a success or fail message from the server
            .catch((err) => console.log(err));

        console.log('tried sending mail');
    }

    form.addEventListener('submit', handleMail);
})();