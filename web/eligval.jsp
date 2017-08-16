
<%@include file="commonforadmin.jsp" %>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%
    int count1=0;
    int count2=0;
 String bg=request.getParameter("bg");
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

       
                
            Class.forName(driver);
             
           Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              
           String query="select * from PATIENT_DETAILS where BLOOD_GROUP='"+bg+"'" ;
             
          ResultSet rs=st.executeQuery(query);
          out.println("<br><br><br><br><br>PATIENTS: ");
         
               while(rs.next())
               {
                   
               String patient_name=rs.getString("PATIENT_NAME");
               out.println("NAME:"+patient_name+"<br>");
             
               String phone_number=rs.getString("PHONE_NUMBER");
               out.println("PHONE NUMBER:"+phone_number+"<br>");
               
               String city=rs.getString("CITY");
               out.println("CITY:"+city+"<br>");
               
               String hname=rs.getString("HOSPITAL");
               out.println("HOSPITAL:"+hname+"<br>");
               
               String email=rs.getString("EMAIL");
               out.println("EMAIL:"+email+"<br>");
               
               int age=rs.getInt("AGE");
               out.println("AGE:"+age+"<br>");
               
               int units=rs.getInt("UNITS");
               out.println("UNITS REQUIRED:"+units+"<br>");
                out.println("<br><br>");
                count1++;
               }
               if(count1==0)
               {
               out.println("There is no Patient which requires");
               out.println(bg);
               
               }
               
               Connection conn1 = DriverManager.getConnection(url,user,password); 
           
                
           Statement st1=conn1.createStatement();
              
          String query1="select * from DONOR_DETAILS where BLOODGROUP='"+bg+"' ";
             
          ResultSet rs1=st1.executeQuery(query1);
           out.println("<br><br><br><br><br>DONORS:");
          
               while(rs1.next())
               {
                   
               long mobno=rs1.getLong("MOBNO");
               out.println("MOBILE:"+mobno+"<br>");    
               
               String email=rs1.getString("EMAIL");
               out.println("EMAIL:"+email+"<br>");
                   
               String name=rs1.getString("NAME");
               out.println("NAME:"+name+"<br>");
              
               String city=rs1.getString("CITY");
               out.println("CITY:"+city+"<br>");
               
                 count2++;
                out.println("<br><br>");
               }
           
               if(count2==0)
               {
               
               out.println("There are no Donors of blood type");
               out.println(bg);
               
               }
           conn.close();
           conn1.close();
 



%>

