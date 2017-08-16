


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
 text-shadow: 3px 3px 3px #CCCCCC;


}    


    
    </style>



<%@include file="commonforadmin.jsp" %>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%
    int count=1;
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

       
                
            Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              
           String query="select * from PATIENT_DETAILS";
             
          ResultSet rs=st.executeQuery(query);
          out.println("<br><br><br><br><br>");
          
           out.print("<h1 align=center> Patients Information </h1>");
     
              out.print("<table>");
                   out.print("<tr>");
                   out.print("<tr> <th>S.No</th> <th>Patient Name</th> <th>Bloodgroup</th> <th>City</th> <th>Hospital</th> <th>Units</th> <th>DOB</th> </tr>") ;
                 while(rs.next())
               {
                  
                   
                   out.print("<tr>");
                   
                   out.print("<td>");
                
               out.println(count);
               out.print("</td>");
                   
                   
                   out.print("<td>");
                    String name=rs.getString("PATIENT_NAME");
               out.println(name);
               out.print("</td>");
               
               out.print("<td>");
               String bg=rs.getString("BLOOD_GROUP");
               out.println(bg);
               out.print("</td>");
             
              
               out.print("<td>");
               String city=rs.getString("CITY");
               out.println(city);
               out.print("</td>");
               
              
               out.print("<td>");
               String hos=rs.getString("HOSPITAL");
               out.println(hos);
                out.print("</td>");
                
                 out.print("<td>");
               int units=rs.getInt("UNITS");
                out.println(units);
                out.print("</td>");
                
                
                out.print("<td>");
               String dob=rs.getString("DOB");
                out.println(dob);
                out.print("</td>");
                
               
                
               out.print("</tr>");
             
                
                count++;
               }


  out.print("</table>");
           
           conn.close();
       




%>