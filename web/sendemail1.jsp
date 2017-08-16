
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%
    
        
    final String name=request.getParameter("fullname");
    final String email=request.getParameter("email");
    final String subject=request.getParameter("subject");
    final String text=request.getParameter("message");
        
       String to = "sahejeetbawa@gmail.com";
        //System.out.println("Sending email ....................................::");
      
       String from = "minorproject37@gmail.com";
      final String username1 = "minorproject37";
      final String password = "gurugobind@123";
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");

     
       Session session1 = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username1, password);
	   }
         });

      try {
	   
	   Message message = new MimeMessage(session1);
           message.setFrom(new InternetAddress(from));
           message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(to));
	   message.setSubject(subject);
           message.setText(text);
          Transport.send(message);

      } catch (MessagingException e) {
         e.printStackTrace();
      }
%>

<jsp:forward page="home.jsp"/>