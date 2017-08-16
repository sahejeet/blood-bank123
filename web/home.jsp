<%@include file="commonforall.jsp" %>
<html>
    <style>
         a {
    color: white;
    
}

a:hover {
    color: red;
}
        
    .image { 
             font-family:"Trebuchet MS", Helvetica, sans-serif;
             
             background-image: url(Smiling-Man-14.jpg);
             color:white;
             text-align: center;  }                 
 </style>
    
    
<body class="image">
    <div>
<%
String name=(String)session.getAttribute("username");
    out.println("<br><br><br>");
    out.println("<p align=right>");
    out.println("<a href=verifyaccount.jsp><b>Welcome &nbsp;"+name+"</b></a>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);

%>
<br><br>
    </div><h1> <b> <font color="#B21D1D" <span id="blinker"> DONATE BLOOD, SAVE LIFE! </span> </font> </b> </h1><br>
    <h1>1 DONATION CAN SAVE UPTO 3 LIVES</h1><br>
    <h1>BECOME A DONOR TODAY!</h1>
    <script>
        var blink_speed = 500;
        var t = setInterval(function () {
        var ele = document.getElementById('blinker');
        ele.style.visibility = (ele.style.visibility == 'hidden' ? '' : 'hidden');
        }, blink_speed);
    </script>
</body>
</html>