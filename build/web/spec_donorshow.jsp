


<style>
    
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    height: 50%;
    
}

td, th {
    border: 2px solid #dddddd;
    text-align: left;
    padding: 2px;
    height: 50%;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
h1   {color: black;
align-content: center;



}    


    
    </style>



<%@include file="commonforadmin.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%
     int count=1;
   String bg=request.getParameter("bg");
   String city=request.getParameter("city");
   String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

       
                
            Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              
           String query="select * from DONOR_DETAILS where BLOODGROUP ='"+bg+"' and CITY='"+city+"' ";
             
          ResultSet rs=st.executeQuery(query);
          
           out.print("<br><br><br><br>");
           out.print("<h1 align=center> Donors With Bloodgroup: "+bg+" and City: "+city+" </h1>");
          
          out.println("<br>");
          
           out.print("<table>");
                   out.print("<tr>");
                   out.print("<tr> <th>S.No</th> <th>Username</th> <th>Address</th> <th>Number</th> <th>Email</th><th>Status</th> <th>Registration Date</th></tr>") ;
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
                
               out.print("</tr>");
             
                
                count++;
               }


  out.print("</table>");
           
               if(count==1)
               {
               
               out.println("There are no Donors of blood type");
               out.println(bg);
               
               }
           conn.close();
       




%>

