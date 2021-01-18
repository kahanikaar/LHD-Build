
 <html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <title>Assignment-6  | Calculator Application Result | SANJIBAN SENGUPTA</title>
   <script>
        $(document).ready(function(){
            $('#myOptions').change(function(){
               ($(this).val() == "add" || $(this).val() == "min" || $(this).val() == "sub" || $(this).val() == "div" || $(this).val() == "pow") ? $('label[for=num2], input#num2').show() : $('label[for=num2], input#num2').hide();
               
            });
        });
          
        </script>
       
 <%!
double factorial(double n)    {
     n=(int)n;   
     if (n == 1) {
            return n;
        }
        else {
            return n * factorial(n - 1);
        }
    }%>

       
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
                        <h4 style="padding-left: 40%; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; margin-left: 6%;"><strong><center>Assignment 6</center></strong></h4>
                         
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
                 <form>

  <h3 style="margin-top:3%;margin-bottom:1%;"><strong> Calculator Application</strong></h3>
                 <div class="form-group row" style="margin-left: 20%; margin-right: 20%; margin-top:2%">
                 <label for="num1" id="n1" style="color:white;"class="col-md-2 col-form-label" ><strong>Calculated Value: </strong></label>
                
                
                 <div class="col-md-10">
                    
<%
   String str = request.getParameter("func");
   
   double tot=0;
   
   
 
     double num1 = Double.parseDouble(request.getParameter("num1"));
     
 
        if ("add".equals(str))
        {
            double num2 = Double.parseDouble(request.getParameter("num2"));
            tot = num1 + num2;
        }
        else  if ("min".equals(str))
        {
            double num2 = Double.parseDouble(request.getParameter("num2"));
            tot = num1 - num2;
        }
         else  if ("sub".equals(str))
        {
             double num2 = Double.parseDouble(request.getParameter("num2"));
             tot = num1 * num2;
        }
        else  if ("div".equals(str))
        {
            double num2 = Double.parseDouble(request.getParameter("num2"));
            tot = num1 / num2;
        }
        else  if ("sin".equals(str))
        {
            tot= Math.sin(Math.toRadians(num1));
        }
        else  if ("cos".equals(str))
        {
            tot= Math.cos(Math.toRadians(num1));
        }
        else  if ("tan".equals(str))
        {
            tot= Math.tan(Math.toRadians(num1));
        }
        else  if ("pow".equals(str))
        {
            double num2 = Double.parseDouble(request.getParameter("num2"));
            tot= Math.pow(num1, num2);
        }
        else  if ("root".equals(str))
        {
            tot=Math.sqrt(num1);
        }
        else  if ("fact".equals(str))
        {
           tot= factorial(num1);
        }
        else  if ("square".equals(str))
        {
          tot=num1*num1;   
        }
        Double result= new Double(tot);
        out.println(result);  
        
 %> 



                  </div>
                  
                </div>

                 <button type="button" name="back" class="btn btn-dark" onclick="history.back()" style="margin-right: 2%;">Go back to the Calculator</button>
             </center>
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




 </body>
 </html>
 		