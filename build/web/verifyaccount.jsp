
<!DOCTYPE html>
<html>
<head>

<style>

      a {
    color: red;
    
}

a:hover {
    color: blue;
}
    
    
body{
    
    
    background: url("");
    background-position: -130px -250px;
    
    
}      
       table#t01 {
    
    
    
    border: 2px solid black;
    border-radius: 8px;
    width: 25%;
  
    .data { border: 2px solid black;}
}
.center {
    padding: 40px 0;
    text-align: center;
}



 td {
    padding: 15px;
       
       }



input[type=text] {
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 12px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 10px 20px 12px 40px;
    
    
            
   }


input[type=password] {
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 12px;
    background-color: white;
    
    background-position: 15px 15px;
    background-repeat: no-repeat;
    padding: 10px 20px 12px 40px;
    
    
            
   }
   
   input[type=number] {
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 12px;
    background-color: white;
    
    background-position: 15px 15px;
    background-repeat: no-repeat;
    padding: 10px 20px 12px 40px;
    
    
            
   }
   
   input[type=email] {
    width: 100%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 12px;
    background-color: white;
    
    background-position: 15px 15px;
    background-repeat: no-repeat;
    padding: 10px 20px 12px 40px;
    
    
            
   }
   
   
   
   .button {
    font-family:'Open Sans Condensed', sans-serif;
    border: none;
    background-color: #0099cc;
    color:white;
    padding: 10px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 25px;
    transition-duration: 0.4s;
}

.button2 { 
    background-color: #999999;}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
color: black; }

.center {
    padding: 0px 0;
    
    text-align: center;
}




</style>


<script>
    
    
    
    
    function checkform(form)
        {
            var inputs=form.getElementsByTagName('input');
            for(var i=0;i<inputs.length;i++){
                if(inputs[i].hasAttribute("required")){
                    if(inputs[i].value=="")
                    {
                        
                        
                        alert("Please fill all the form fields");
                        return false;
                        
                    }
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
            }
            
            
            
            return true;
            
            
            
            
            
            
        }
        

 function validate() {
        var phoneNo = document.getElementById('no');
		
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            phoneNo.focus();
            return false;
        }
        else{
        //alert("Success ");
        return true;
        }
    }
     
        
        
         </script>





</head>

<%
String name=(String)session.getAttribute("username");
    out.println("<p align=right>");
    out.println("<a href=verifyaccount.jsp><b>Welcome &nbsp;"+name+"</b></a>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);

%>



<body>
    
    <h1 align="center" style="color:black;font-size: 25px; font-family: Georgia, Times New Roman, Times, serif;">VERIFY ACCOUNT</h1>
    <form action="verify.jsp" method="post" onsubmit="return validate()">
        <div class="center">
            <table align="center" id="t01">
         <tr class="#">
             <td><img src="prof2.png" alt="" height=200 width=200> </td>
             
    
    </tr>
                
        <tr class="data">
            <td><input type="text"  name="username" placeholder="Username*" required></td>
    
    </tr>
    <tr>
        <td><input type="password"  class="data" name="password" placeholder="Password*" required></td>
    
    </tr>

    <tr>
    <td><input type="submit" class="button button2" value="Verify" onclick="return checkform(this)"></td>
    </tr>
    </table>
     </div>
</form>
     <p align="right" style="color:red">Click <a href="home.jsp">here</a> to go back</p>
    
    
<div class="bodyy"> 
</div>
	
</body>
</html>



