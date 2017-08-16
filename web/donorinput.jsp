
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>


<%



String bg=request.getParameter("bg");
String city=request.getParameter("city");
String dob=request.getParameter("dob");
String address=request.getParameter("address");
String name=(String)session.getAttribute("username");

session.setAttribute("bg", bg);
session.setAttribute("city", city);
session.setAttribute("dob", dob);
session.setAttribute("address", address);
session.setAttribute("name", name);




String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";

Class.forName(driver);

 Connection conn1 = DriverManager.getConnection(url,user,password); 
           
                
           Statement st1=conn1.createStatement();
              

          String query1="select * from REG_TABLE where USERNAME='"+name+"'";
             
          ResultSet rs1=st1.executeQuery(query1);
               
          
          while(rs1.next())
              
              
          {
          long phone=rs1.getLong("PHONE");
          out.print(phone);
          //String ph=Long.toString(phone);
          session.setAttribute("phone", phone);
        
          String email=rs1.getString("EMAIL");
           session.setAttribute("email", email);
          
     }

           conn1.close();


//out.print("the phone no");

%>


<jsp:forward page="finaldonorinput.jsp"/>