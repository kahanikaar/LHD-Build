var counter = 1; 
        disp(counter); 
   
        function changer(n) { 
            disp(counter += n); 
        } 
   
        function current(n) { 
            disp(counter = n); 
        } 
   
        /* Main function */ 
        function disp(n) { 
            var i; 
            var total = $(".slides"); 
              
            var indicator = $(".slide-ind"); 
              
            if (n > total.length) { 
                counter = 1; 
            } 
            if (n < 1) { 
                counter = total.length; 
            } 
            for (i = 0; i < total.length; i++) { 
                total[i].style.display = "none"; 
            } 
            for (i = 0; i < indicator.length; i++) { 
                indicator[i].className =  
                indicator[i].className.replace(" active", ""); 
            } 
            total[counter - 1].style.display = "flex"; 
            indicator[counter - 1].className += " active"; 
        } 


        $(document).ready(function(){
    $(".next").click(function(){
        $(".slides").hide("slide", { direction: "left" }, 1000);
    });
});