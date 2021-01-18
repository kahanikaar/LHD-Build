var Cryptr = require('cryptr');
var fs = require('fs');
cryptr = new Cryptr('myTotalySecretKey');
 
var connection = require('./../config');
module.exports.authenticate=function(req,res){
    var name=req.body.name;
    var pswd=req.body.password;
   
   
    connection.query('SELECT * FROM userinfo WHERE name = ?',[name], function (error, results, fields) {
      if (error) {
            res.send('Query error.')
      }else{
       
        if(results.length >0){
  decryptedString = cryptr.decrypt(results[0].password);
            if(pswd==decryptedString){
                req.session.name=results[0].name;
                req.session.roll=results[0].roll;
                
                req.session.email=results[0].email;
                fs.writeFile('welcome.html','<!DOCTYPE html><html lang="en">    <head>        <meta charset="UTF-8">        <meta name="viewport" content="width=device-width, initial-scale=1.0">        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>        <title>Assignment-5  |  SANJIBAN SENGUPTA | Login Page</title>                      </head>          <body style="                                font-family: sans-serif;            font-weight: 100;        background-image: url(https://raw.githubusercontent.com/kahanikaar/Project-EyT/master/20200712_031013_0000.png);         background-position: center left; background-repeat: no-repeat; background-attachment: fixed;          background-size: cover; "        >        <div class="container"><div class="row">        <div class="col-12">        <header class="jumbotron jumbotron-fluid" style="border-style: outset; border-color: white; background-color: crimson; color:white; padding-bottom: 0%;">            <div class=container>                <div class="row row-header">                    <div class="col-8" style="padding-bottom: 4%;">                        <h4 style="padding-left: 40%; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><strong><center>Assignment 5</center></strong></h4>                                             </div>                                                      </div>                <div class="row row-header">                    <div class="col-12" >                                                <marquee style="background-color: transparent; color: white; font-weight: 200; border-bottom: 2px solid white; border-top:2px solid white;"><em>Name: Sanjiban Sengupta &nbsp &nbsp &nbsp &nbsp ID: B518041</em></marquee>                                        </div>                    </div>            </div>        </header>        </div>        </div>        </div>        <div style="position: relative;">            <div class="container">                    <div class="row  row-content">            <div class="col-12">             <div style="background-color: #fb795b;  border:white; border-width: 5px; border-style: inset; border-radius: 4%;">                <center>         <h3><strong>Welcome Page</strong></h3><br><br><h5 style="color:white; margin-bottom:5%;"><strong>Name:  </strong>'+req.session.name+'<br><br><strong>Student ID: </strong>'+req.session.roll+'<br><br><strong>Email: </strong>'+req.session.email+'</h5>                       </center>                                             </div>           </div>            </div>          </div>          </div>          <footer  style="position:absolute; margin-top: 4%;  height:3.5rem; width:100%; background-color: crimson; border-top: 2px solid white; text-align: center; bottom:0;">  <h5> <p style="color:white">Made By: Sanjiban Sengupta<br>   <a href="mailto:b518020@iiit-bh.ac.in">Send an email!</a></p></h5> </footer></body></html>',function (error) {
                    if (error) throw error;
                });
                res.redirect('/welcome.html');
                
            }else{
                 res.send('The entered password is wrong! Please enter the correct password');
            }
          
        }
        else{
          res.send('Email provided does not exist!');
        }
      }
    });
}