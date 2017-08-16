

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>


<style>
    
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
    height: 25%;
    
}

td, th {
    border: 2px solid #dddddd;
    text-align: left;
    padding: 2px;
    height: 20%;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
h1   {color: black;
align-content: center;



}    


    
    </style>

    <fieldset>
        <img src="logo1.jpg" width="200" height="80" align="right" border="1">        
<h1 align="center" style="margin-left: 220px; color:black;font-size: 40px; font-family: Georgia, Times New Roman, Times, serif;">DONOR CARD</h1>
<%
    int count=1;

String name=(String)session.getAttribute("name");
session.setAttribute("name",name);
String phone=(String)session.getAttribute("phone1");
session.setAttribute("phone",phone);
String city=(String)session.getAttribute("city");
session.setAttribute("city",city);
String email=(String)session.getAttribute("email");
session.setAttribute("email",email);

UUID uniqueKey = UUID.randomUUID();
String uniqueid=uniqueKey.toString();
String finuniqueid=uniqueid.substring(0,8);
//out.print("<h2 align=center style=color:black;font: 10px;margin-left: 250px; font-family: Georgia, Times New Roman, Times, serif;>");
//out.print("<b>NAME:</b>"+name);
//out.print("</h2>");
out.print("<h2 align=center style=color:black;font: 10px; margin-left: 250px; font-family: Georgia, Times New Roman, Times, serif;>");
out.print("<b>NAME:</b>"+name);
out.print("<br><br>");
out.print("<b>REGISTRATION ID:</b>"+finuniqueid);
out.print("<br><br>");
out.print("<b>CITY:</b>"+city);
out.print("<br><br>");
out.print("<b>EMAIL:</b>"+email);
out.print("<br><br>");
out.print("PHONE:"+phone);
out.print("<br><br>");

out.print("For availing DonateBlood Free Tshirts,Coffee Mugs And Gift Vouchers Contact Following Blood Banks:-");
out.print("</h2>");


String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

       
                
            Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              
          String query="select * from BLOODBANKS where CITY ='"+city+"' ";
             
          ResultSet rs=st.executeQuery(query);
          out.print("<p align=center>");
          out.print("<table>");
                   out.print("<tr>");
                   out.print("<tr> <th>S.No</th> <th>Blood Bank </th> <th>Address</th> <th>City</th> </tr>") ;


while(rs.next())
               {
                out.print("<tr>");
                   
                   out.print("<td>");
               out.println(count);
              out.print("</td>");
               
              
              out.print("<td>");
                    String bloodbank=rs.getString("BANK");
               out.println(bloodbank);
               out.print("<br>");
               out.print("</td>");
               
            out.print("<td>");
                    String add=rs.getString("ADDRESS_BANK");
               out.println(add);
               out.print("<br>");
               out.print("</td>");
               
               out.print("<td>");
                  String city1=rs.getString("CITY");
               out.println(city1);
               out.print("<br>");
               out.print("</td>");
               
                count++;
               }
out.print("<p>");
conn.close();

Connection conn1 = DriverManager.getConnection(url,user,password); 
           
                
           Statement st1=conn1.createStatement();
              

   String query1=" UPDATE DONOR_DETAILS set REG_ID='"+finuniqueid+"' where USERNAME='"+name+"' ";
          
          
             
           st1.executeUpdate(query1);
           
           



 conn1.close();
 


Connection conn2 = DriverManager.getConnection(url,user,password); 
           
                
           Statement st2=conn2.createStatement();
              

           
 String query2="UPDATE REG_TABLE set REG_ID='"+finuniqueid+"' where USERNAME='"+name+"' ";
          
          
             
           st2.executeUpdate(query2);
           
           



 conn2.close();



%>

<script>
function myFunction() {
    window.print();
}
</script>

<input type="submit" onclick="myFunction()" value="Print This Page" style="position: absolute; left:45%; bottom: 2%;">

    </fieldset>

<h4 align="right" style="right: 2%;position: fixed; bottom: 0%;color:black; font: 10px; font-family: Georgia, Times New Roman, Times, serif;">
Click <a href="home.jsp">here</a> To Go To Homepage!
</h4>