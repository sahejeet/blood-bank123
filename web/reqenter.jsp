
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>

<%
    
String u=request.getParameter("username");
String dob=request.getParameter("dob");
String city=request.getParameter("city");
String hname=request.getParameter("hospitalname");
String bg=request.getParameter("bg");
int units=Integer.parseInt(request.getParameter("units"));

String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              

 String query="insert into PATIENT_DETAILS values('"+u+"','"+bg+"','"+city+"','"+hname+"','"+units+"','"+dob+"')";
          
          
             
           st.executeUpdate(query);
               
           //out.println("record inserted");
           conn.close();


session.setAttribute("bg",bg);
session.setAttribute("city",city);









%>
<jsp:forward page="emergency.jsp"/>