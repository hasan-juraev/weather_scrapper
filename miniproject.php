<?php

/*create $error variable in global scope to work the code properly */
$error = "";
$successMessage = "";
if($_POST){
    

    if(!$_POST["email"]){ /* if there is nothing inside the POST variable of email | if email is empty*/
        $error .= "Email address is required<br>";
    }

    if(!$_POST["subject"]){ /* if there is nothing inside the POST variable of subject | if subject is empty*/
        $error .= "Subject is required<br>";
    }

    if(!$_POST["content"]){ /* if there is nothing inside the POST variable of email | if content is empty*/
        $error .= "Content is required<br>";
    }

   // $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if ($_POST["email"] && !filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
      $error .= "Invalid email format.<br>";
    }

    if($error != ""){
        $error .= '<div class="alert alert-danger" role="alert"> <strong>The following field(s) are missing: <br> </strong>' . $error . '</div>';
    }
    else{
        $emailTo = "hbycleverboy777@gmail.com";
        $subject = $_POST["subject"];
        $content = $_POST["content"];
        $get_mail = $_POST['email'];
        $header = 'From: '.$get_mail. "\r\n" .
    'Reply-To: webmaster@example.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
        if(mail($emailTo, $subject, $content, $header)){

            $successMessage =  '<div class="alert alert-success" role="alert"> The message has been sent successfully! from   </div>'.$header;
        }else{
            $error = '<div class="alert alert-danger" role="alert"> <strong>Your message could not been sent. Please try again later <br> </strong> </div>';
        }
    
    }
    
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>

        body{
            font-family: Arial, Helvetica, sans-serif;
            font-size: 130%;
        }

        input{
             
            padding: 5px 5px 12px 5px;
            font-size: 25px;
            border-radius: 5px;
            border: 1px solid gray;
            width: 320px;             
        }

        label{
            position: relative;
            top: 4px;
            width: 150px;
            float: left;
        }

        .center{
            margin: 0 auto;
            width: 550px;
        }

        .form-element{
            margin-bottom: 10px;
        }

        #submitButton{
            width: 150px;
            margin-left: 250px;
        }

        #errorMessage{
            color: red;
            font-size: 110% !important;
        }

        #successMessage{
            color: green;
            font-size: 110% !important;
            display: none;
            margin-bottom: 10px;
        }

    </style>
    <title>PHP Form Validation</title>

</head>
<body>

    <div>
        <div class="container bg-light mt-3 pt-2 pb-2">            
            <h1> Get in touch!</h1>
            <div id="successMessage">You did it! Congratulations!</div>
            <div id="errorMessage"> <?php echo $error.$successMessage ?> </div>

            <form id=testForm method="post">
                <!--Email Adress-->
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                </div>
                <!--Subject-->
                <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" class="form-control" id="subject" name="subject">
                </div>
                <!--Content-->
                <div class="form-group">
                    <label for="content">What would you like to ask us?</label>
                    <textarea class="form-control" id="content" rows="5" name="content"></textarea>
                </div>

                <button id="submit" class="btn btn-primary " type="submit">Submit</button>
            </form>
        </div>
    </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<script type="text/javascript">
    
</script>
</body>
</html>