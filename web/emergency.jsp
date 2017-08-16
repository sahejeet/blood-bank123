
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@include file="commonforall.jsp" %>

<style>
    
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 10px;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
h1   {color: black;
align-content: center;
 text-shadow: 3px 3px 3px #CCCCCC;


}    


    
    </style>

    
    <body>
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











<%
   int count=1;
String bg=(String)session.getAttribute("bg");
String city=(String)session.getAttribute("city");
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

      
                
            Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();

 String query="select * from DONOR_DETAILS where BLOODGROUP='"+bg+"' and CITY='"+city+"' ";
             
          ResultSet rs=st.executeQuery(query);
          %>
         
          
    <h1 align="center">Contact Donors </h1>
    <%
    out.print("<table>");
                   out.print("<tr>");
                   out.print("<tr> <th>S.No</th> <th>Username</th> <th>Address</th> <th>Phone Number</th> <th>Email</th><th>Status</th> <th>Registration Date</th><th>Blood Group</th></tr>") ;
                 while(rs.next())
               {
                  
                   
                   out.print("<tr>");
                   
                   out.print("<td>");
                
               out.println(count);
               out.print("</td>");
                   
                   
                   out.print("<td>");
                    String username=rs.getString("USERNAME");
               out.println(username);
               out.print("</td>");
               
               out.print("<td>");
               String add=rs.getString("ADDRESS");
               out.println(add);
               out.print("</td>");
             
              
               out.print("<td>");
               long phone=rs.getLong("PHONE");
               out.println(phone);
               out.print("</td>");
               
              
               out.print("<td>");
               String email=rs.getString("EMAIL");
                out.println(email);
                out.print("</td>");
                
                 out.print("<td>");
               String status=rs.getString("STATUS");
                out.println(status);
                out.print("</td>");
                
                
                out.print("<td>");
               String DATE_REG=rs.getString("DATE_REG");
                out.println(DATE_REG);
                out.print("</td>");
                
                out.print("<td>");
               String bloodgroup=rs.getString("BLOODGROUP");
                out.println(bloodgroup);
                out.print("</td>");
                
               out.print("</tr>");
             
                
                count++;
               }


  out.print("</table>");












conn.close();
//conn1.close();
%>
    </body>