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
        <title>Assignment-6  | Calculator Application | SANJIBAN SENGUPTA</title>
   <script>
        $(document).ready(function(){
            $('#myOptions').change(function(){
               ($(this).val() == "add" || $(this).val() == "min" || $(this).val() == "sub" || $(this).val() == "div" || $(this).val() == "pow") ? $('label[for=num2], input#num2').show() : $('label[for=num2], input#num2').hide();
               
            });
        });
          
        </script>
       


       
      </head>


  



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
                        <h4 style="padding-left: 40%; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;"><strong><center>Assignment 6</center></strong></h4>
                         
                    </div>
                   
                   
                </div>
                <div class="row row-header">
                    <div class="col-12" >
                        
                        <marquee style="background-color: transparent; color: white; font-weight: 200; border-bottom: 2px solid white; border-top:2px solid white;"><em>Name: Sanjiban Sengupta &nbsp &nbsp &nbsp &nbsp ID: B518041</em></marquee>
                    
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
             <div style="background-color: #fb795b;  border:white; border-width: 5px; border-style: inset; border-radius: 4%;">    
            <center> 
                 <form  action="calculate.jsp" method="post" >
                  <h3 style="margin-top:3%;margin-bottom:1%;"><strong> Calculator Application</strong></h3>
                  <div class="form-group row" style="margin-left: 20%; margin-right: 20%; margin-top:2%">
                 <label for="function" id="func" style="color:white;"class="col-md-2 col-form-label" ><strong>Function to perform:</strong></label>
                 
                  <div class="col-md-10">
                        <select class="form-control" style="text-align: center;" name="func" id="func_options" required>
        <option value="">Select</option>
        <option id="add" value="add">Add</option>
        <option id="min" value="min">Subtract</option>
        <option id="sub" value="sub">Multiply</option>
        <option id="div" value="div">Divide</option>
        <option id="sin" value="sin">Sine</option>
        <option id="cos" value="cos">Cosine</option>
        <option id="tan" value="tan">Tangent</option>
        <option id="root" value="root">Root</option>
        <option id="pow" value="pow">Power</option>
        <option id="fact" value="fact">Factorial</option>
        <option id="square" value="square">Square</option>
      </select>
                  </div>
                </div>
               
            


               

                <div class="form-group row" style="margin-left: 20%; margin-right: 20%; margin-top:2%">
                 <label for="num1" id="n1" style="color:white;"class="col-md-2 col-form-label" ><strong>First Number: </strong></label>
                
                
                 <div class="col-md-10">
                      <input type="text" class="form-control" id="num1" name="num1" placeholder="First Number">
                  </div>
                  
                </div>


                <div class="form-group row" style="margin-left: 20%; margin-right: 20%; margin-top:2%">
                 <label for="num2" id="n2" style="color:white;"class="col-md-2 col-form-label" ><strong>Second Number: </strong></label>
                
                
                 <div class="col-md-10">
                      <input type="text" class="form-control" id="num2" name="num2" placeholder="Second Number">
                  </div>
                  
                </div>


              
               <div class="form-group row">
        <div class="col-md-6" style="margin-top: 2%; margin-left:15%;">
            <button type="submit" class="btn btn-primary" >Calculate</button>
             <button type="reset" class="btn btn-secondary" style="margin-right: 2%;">Reset</button>
        </div>
       
    </div>
          </form>


  </div>
           </div>
            </div>
          </div>
          </div>
          
<footer  style="position:absolute; margin-top: 4%;  height:3.5rem; width:100%; background-color: crimson; border-top: 2px solid white; text-align: center; bottom:0;">
  <h5> <p style="color:white">Made By: Sanjiban Sengupta<br>
   <a href="mailto:b518041@iiit-bh.ac.in">Send an email!</a>

</p></h5>
 </footer>
</body>
</html>
