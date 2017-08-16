

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%
   int count=0;
   //String name=(String)session.getAttribute("username");
String username=request.getParameter("username");
String password=request.getParameter("password");
String phoneno=request.getParameter("phoneno");
String email=request.getParameter("email");
String status=request.getParameter("status"); 

if("yes".equals(status))
{

status="yes";

}

else
{

status="no";

}




String name=(String)session.getAttribute("username"); 


String driver="oracle.jdbc.driver.OracleDriver";    
    String url="jdbc:oracle:thin:@localhost:1521:xe";

       
        Class.forName(driver);
        Connection conn3=DriverManager.getConnection(url, "sahejeet", "sahejeet");
        Statement st3=conn3.createStatement();
        
        String query3="select * from DONOR_DETAILS where USERNAME='"+name+"' ";
        
         ResultSet rs3=st3.executeQuery(query3);
         while(rs3.next())
         {
         count++;
         }
        conn3.close();

        if(count>0){
       
        Class.forName(driver);
        Connection conn=DriverManager.getConnection(url, "sahejeet", "sahejeet");
        Statement st=conn.createStatement();
        
        String query="update REG_TABLE set USERNAME='"+username+"' , PASSWORD='"+password+"', PHONE='"+phoneno+"' , EMAIL='"+email+"' where USERNAME='"+name+"' ";
        
        st.executeUpdate(query);
        conn.close();

       
        Class.forName(driver);
        Connection conn1=DriverManager.getConnection(url, "sahejeet", "sahejeet");
        Statement st1=conn1.createStatement();
        
        String query1="update DONOR_DETAILS set USERNAME='"+username+"' , PHONE='"+phoneno+"' , EMAIL='"+email+"' , STATUS='"+status+"' where USERNAME='"+name+"' ";
        
        st1.executeUpdate(query1);
        conn1.close();

        
String to = email.trim();
        //System.out.println("Sending email ....................................::");
      
       String from = "minorproject37@gmail.com";
      final String username1 = "minorproject37";
      final String password1 = "gurugobind@123";
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

     
       Session session1 = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username1, password1);
	   }
         });

      try {
	   
	   Message message = new MimeMessage(session1);
	
	 
	   message.setFrom(new InternetAddress(from));
	
	  
	   message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(to));
	
	   
	     message.setSubject("Email ID update");
	
	   
	     message.setText("Thanks for updating email id"+"\nThe Updated name is:"+username+"\nThe Updated phone number is:"+phoneno+"\nThe Update status is:"+status+"\nDont recognize this activity? \nCONTACT US:"+"<a href=http://localhost:45859/Minorproject/contactus.jsp>Click here!</a>");
           
	   Transport.send(message);

	   //System.out.println("Thank you for signing up ......Please check your mails");

      } catch (MessagingException e) {
         e.printStackTrace();
      }



%>


<jsp:forward page="home.jsp"/>
        
<%
 }   
%>



<%

//else
{
     %>      
<jsp:include page="donor.jsp"/>
<script> 
    confirm("First fill donorform only then you can update profile");
</script>

<%

}
%>