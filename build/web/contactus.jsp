
<%@include file="commonforall.jsp" %>

    <style>
    input[type=text] {
    width: 50%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 15px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    
    
            
   }
    
   input[type=number] {
    width: 50%;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 10px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    
    
            
   }
   
   input[type=email] {
    width: 51%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 15px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    
    
            
   }
   
   .button {
    
    border: none;
    background-color: #5C8CA7;
       border-radius: 25px;
    color:white;
    padding: 10px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
   
    transition-duration: 0.4s;
}

.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
   

body{
    
    
    background-image: url("user.jpg");
    
    
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
        
     
       
        
         </script>







<br><br><br>
<%
String name=(String)session.getAttribute("username");
    out.println("");
    out.println("<p align=right>");
    out.println("<b>Welcome &nbsp;"+name+"</b>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);




%>

<form  name="form1" method="post" action="sendemail.jsp" onsubmit="return checkform(this)">
    <fieldset>
        <legend><b>CONTACT US</b></legend>
<p align="center">
    <label for="fullname"><b>FULL NAME&nbsp;</b></label>
    <input type="text" name="fullname" id="username" placeholder="Full Name*" required>
    <br><br>
    
    <label for="email"><b>EMAIL&nbsp;</b></label>
<input type="email" class="data" name="email" placeholder="Email*" required><br><br>

<label for="username"><b>SUBJECT&nbsp;</b></label>
<input type="text" name="subject" id="username" placeholder="Subject*" required><br><br>

<b>MESSAGE</b><br>

<textarea name="message" cols="50" rows="5"  placeholder="Enter Message*" required></textarea>
<br>

<input type="submit" class="button button2" name="submit" onclick="return validate();" >

<br>
    </fieldset>
</p>
</form>










</html>












<%%>