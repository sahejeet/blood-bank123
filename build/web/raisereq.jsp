
<%@include file="commonforall.jsp" %>
<!DOCTYPE html>
<html>
    <head>
    
        <style>
            
            
            input[type=text] {
    width: 60%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 12px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
}   
            
            
        input[type=number] {
    width: 50%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 12px;
    background-color: white;
    
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
}   
            
input[type=email] {
    width: 50%;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 12px;
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
    </head>
    
      <%
String name=(String)session.getAttribute("username");
    out.println("<br><br><br>");
    out.println("<p align=right>");
    out.println("<b>Welcome &nbsp;"+name+"</b>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);




%>

    
    <body>
<form action="reqenter.jsp" method="post" onsubmit="return checkform(this)">
    <fieldset>
        <legend><b>RAISE A REQUEST</b></legend>
<p align="center">
    <label for="username"><b>PATIENT NAME&nbsp;</b></label>
    <input type="text" name="username" id="username" placeholder="Enter Patient Name" required><br><br>

<b>DOB&nbsp;</b><input type="date" name="dob"  required><br><br>

<b>CITY&nbsp;</b><select name="city"  required>
    <option selected="" disabled="disabled" value="select a City" >Select a City</option>
    <option value="Agra">Agra</option>
    <option value="Amritsar">Amritsar</option>
    <option value="Bangalore">Bangalore</option>
    <option value="Chandigarh">Chandigarh</option>
    <option value="Delhi">Delhi</option>
    <option value="Jaipur">Jaipur</option>
    <option value="Goa">Goa</option>
</select><br><br>

<b>HOSPITAL&nbsp;</b><input type="text" name="hospitalname" placeholder="Hospital Name" required><br><br>

<b>BLOOD GROUP&nbsp;</b><select name="bg" required>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
</select><br><br>
<b>NO OF UNITS&nbsp;</b><input type="number" name="units" placeholder="Required Units" required><br><br>
<input id="b1" type="submit" class="button button2" name="submit" onclick="return validate()"><br><br>
</p>

    </fieldset>
</form>



</body>
</html>

