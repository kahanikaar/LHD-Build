<?php 
header('Content-type: text/html; charset=utf-8'); ?>

<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <title>Assignment-2  |  SANJIBAN SENGUPTA</title>
   
       
   
      </head>


    <body>



        <body style=" 
       
            
            font-family: sans-serif;
            font-weight: 100;
        background-image: url(https://raw.githubusercontent.com/kahanikaar/Project-EyT/master/20200712_031013_0000.png);
         background-position: center left; background-repeat: no-repeat; background-attachment: fixed;
          background-size: cover; "
        >
        <div class="container">
<div class="row">
        <div class="col-12">

        <header class="jumbotron jumbotron-fluid" style="border-style: outset; border-color: white; background-color: crimson; color:white; padding-bottom: 0%;">

            <div class=container>
                <div class="row row-header">
                    <div class="col-8" style="padding-bottom: 4%;">
                        <h4 style="padding-left: 40%; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><strong><center>Assignment 2</center></strong></h4>
                         
                    </div>
                   
                   
                </div>
                <div class="row row-header">
                    <div class="col-12" >
                        
                        <marquee style="background-color: transparent; color: white; font-weight: 200; border-bottom: 2px solid white; border-top:2px solid white;"><em>Name: Sanjiban Sengutpa &nbsp &nbsp &nbsp &nbsp ID: B518041</em></marquee>
                    
                    </div>
                    </div>
            </div>
        </header>
    </div>
</div>
</div>
<div style="position: relative;">
  <div class="container">
<div class="row  row-content">
  <div class="col-12">
   <div style="background-color: #fb795b;  border:white; border-width: 5px; border-style: inset; border-radius: 4%;">    <form>
   
       
    <div class="row" style="margin-left: 20%; margin-right: 20%; margin-top:2%">
        <label for="firstname" style="color:white;"class="col-md-2 col-form-label" ><strong>Your Name:</strong></label>
        <div class="col-md-10">
        <?php echo $_FILES["name"]; ?>
        </div>
      </div>
      <div class= "row"  style="margin-left: 20%; margin-right: 20%; margin-top:2%">
        <label for="address" style="color:white;"class="col-md-2 col-form-label"><strong>Your address:</strong></label>
        <div class="col-md-10">
        <?php echo $_FILES["address"]; ?>
        </div>
      </div>

      <div class="row"  style="margin-left: 20%; margin-right: 20%; margin-top:2%">
      <label for="img1" style="color:white;"><strong>Your uploaded image:</strong></label>
      <div class="col-md-10">
      <?php echo $_FILES["img"]; ?>
      </div></div>
     




   
  </div>
 </div>
  </div>
</div>
</div>


<footer  style="position:absolute; margin-top: 4%;  height:3.5rem; width:100%; background-color: crimson; border-top: 2px solid white; text-align: center; bottom:0;">
   <h5> <p style="color:white">Made By: Sanjiban Sengupta<br>
    <a href="mailto:b518020@iiit-bh.ac.in">Send an email!</a>

</p></h5>
  </footer>




    </body>









</html>