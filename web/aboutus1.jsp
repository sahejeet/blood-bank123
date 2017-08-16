    
<%@include file="commonforall.jsp" %>


<style>
p {
    
    margin-top: 2em;
    margin-bottom: 1em;
    margin-left: 2em;
    color:#333333 
}

img {
    border-radius: 15px;
    border: 1.5px solid black;
   
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

<body background="user.jpg">
<br><br>
<%
String name=(String)session.getAttribute("username");
    out.println("<p align=right>");
    out.println("<b>Welcome &nbsp;"+name+"</b>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);

%>

<h2 style="font-family:verdana; text-indent: 30px;">About Us</h2>
<img align="right" width="500" height="380" style="margin-right: 2em;" src="dblood.JPG">


<p align="left" style="font-family:verdana;margin-right: 35em;">
India is country having a population of nearly 120 crores , 
    but there is a shortage of 30-35% of blood in India and this shortfall often hits 50% in summers.
 After every two seconds someone needs blood. Many people die every day due to blood cancer, 
 heart diseases and during child birth.   
 Around 12 million units of blood are required annually but collects only 9 million units only, 
 resulting in huge loss to life.   
In a country like India every two seconds someone needs blood. <br>
The requirement for blood is large whereas the donors for the blood are less. 
Our website will act as medium for the one who requires blood and the one who is eligible to donate blood. 
   <br>
The primary objective of our website will be to promote the donation of blood and make people aware that there is no harm in donating blood rather they should feel proud of it, if they could save a life. 
Even in this modern era where we powered almost everything with the help of technology, 
many people die due to shortage of blood. 
So to face this problem, we are establishing (providing) the platform where we can help the mankind.
</p>
<form method="post" action="donor.jsp">
    <h2 style="font-family:verdana; text-indent: 30px;">Contribute Us</h2>
    <p align="left" style="font-family:verdana;margin-right: 35em;">
        Be a proud Donor Donate Now!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="DONATE" class="button" >
    </p>
</form>
</body>
