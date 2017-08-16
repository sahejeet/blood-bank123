


<%@include file="commonforall.jsp" %>

<html>
    
    <script>
        
        
        function check()
        {
            var cb=document.getElementById("checkbox");
            var sub=document.getElementById("submit");
            if(cb.checked==true)
                sub.disabled=false;
            else
                sub.disabled=true;
            
            
            
        }
        
        
        
        
        </script>
    
    <style>
        
        body{
    
    
    background-image: url("girl.jpg");
    background-position: 300px -20px;
   color: black;
  image-height: 450px;
    
}
        
 p {
    
    margin-top: 1em;
    margin-bottom: 2em;
    margin-left: 5em;
    margin-right: 5em;
    
}

.button {
    background-color: #cc0000;
    border: none;
    color: white;
    padding: 15px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 17px;
    margin: 4px 2px;
    cursor: pointer;
}

.button:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    color: black;
}
        
        </style>
    
    
        
         <%
String name=(String)session.getAttribute("username");
    out.println("<br><br><br>");
    out.println("<h4 align=right>");
    out.println("<b>Welcome &nbsp;"+name+"</b>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</h4>");
session.setAttribute("username",name);




%>
    

    <body>
        <h2 align="center" style="color:#ffffff;font-size: 35px; font-family: Georgia, Times New Roman, Times, serif;">QUICK TIPS</h2>
        <p align="center" style="font-family:verdana; font-size:19.5px;" ><b>
<br>
To give blood, you must be healthy, at least 17 years old, and weigh at least 110 pounds.<br><br>

 
The most needed blood types are O+, O-, AB- and B-. These blood types are absolutely critical.<br><br>

If you have one of the critical blood types but do not have a donor card, go to the blood camps anyway!<br><br>
 
If you have any reason to believe you have AIDS, do not donate blood.
 <br><br>
If you have given blood in the last 56 days (8 weeks), you cannot give blood again, even if you have one of the critical blood types. 
     <br>
     
   </b> </p>
    
    
    <form action="donorform.jsp" method="post">
        <p align="center" style="color:red;font-size: 20px;"> <input id="checkbox" type="checkbox" value="terms" onclick="check();">I have read all terms</p>
        <p align="center"><input id="submit" type="submit" class="button" disabled="disabled" value="Continue to Registration"></p>
       <br><br><br><br><br><br><br><br>
    </form>
    </body>
    </html>
    
   