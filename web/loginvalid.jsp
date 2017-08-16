
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String phone=request.getParameter("phoneno");
String email=request.getParameter("email");
String reg_id="";

Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sahejeet","sahejeet");

           
                
           Statement st=conn.createStatement();
              

 String query="insert into REG_TABLE values('"+username+"','"+password+"','"+phone+"','"+email+"','"+reg_id+"')";
          
          
             
           st.executeUpdate(query);
               
           //out.println("record inserted");
           conn.close();


  final String name=request.getParameter("fullname");
   //final String email=request.getParameter("email");
    //final String subject=request.getParameter("subject");
    //final String text=request.getParameter("message");
        
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
	
	   
	     message.setSubject("Welcome to donateblood.org");
	
	   
	     message.setContent( "<html>\n" +
"<body>\n" +
"\n" +
"<div style=\"font-family:HelveticaNeue-Light,Arial,sans-serif;background-color:#eeeeee\">\n" +
"	<table align=\"center\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#eeeeee\">\n" +
"    <tbody>\n" +
"        <tr>\n" +
"        	<td>\n" +
"                <table align=\"center\" width=\"750px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#eeeeee\" style=\"width:750px!important\">\n" +
"                <tbody>\n" +
"                	<tr>\n" +
"                    	<td>\n" +
"                			<table width=\"690\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#eeeeee\">\n" +
"                            <tbody>\n" +
"                            	<tr>\n" +
"                                    <td colspan=\"3\" height=\"80\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#eeeeee\" style=\"padding:0;margin:0;font-size:0;line-height:0\">\n" +
"                                        <table width=\"690\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n" +
"                                        <tbody>\n" +
"                                        	<tr>\n" +
"                                            	<td width=\"30\"></td>\n" +
"                                                \n" +
"                                                <td width=\"30\"></td>\n" +
"                                            </tr>\n" +
"                                       	</tbody>\n" +
"                                        </table>\n" +
"                                  	</td>\n" +
"                    			</tr>\n" +
"                                <tr>\n" +
"                                    <td colspan=\"3\" align=\"center\">\n" +
"                                        <table width=\"630\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n" +
"                                        <tbody>\n" +
"                                        	<tr>\n" +
"                                            	<td colspan=\"3\" height=\"60\"></td></tr><tr><td width=\"25\"></td>\n" +
"                                                <td align=\"center\">\n" +
"                                                    <h1 style=\"font-family:HelveticaNeue-Light,arial,sans-serif;font-size:48px;color:#404040;line-height:48px;font-weight:bold;margin:0;padding:0\">Welcome to Donateblood </h1>\n" +
"                                                </td>\n" +
"                                                <td width=\"25\"></td>\n" +
"                                            </tr>\n" +
"                                            <tr>\n" +
"                                            	<td colspan=\"3\" height=\"40\"></td></tr><tr><td colspan=\"5\" align=\"center\">\n" +
"                                                    <h2>OBJECTIVE</h2>\n" +
"                                                    <p style=\"color:#404040;font-size:16px;line-height:24px;font-weight:lighter;padding:0;margin:0\">The primary objective of our website will be to promote the donation of blood and make people aware that there is no harm in donating blood rather they feel proud if they could save someones life.<br> . Even in todays world where we powered almost everything with the help of technology, many people die due to shortage of blood. <br>So to face this problem, we are establishing (providing) the platform where we can help the mankind.<br> A rise is needed in the number of voluntary donors who refrain from donating blood because of their lack of awareness and ignorance. </p><br>\n" +
"                                                    <h2>QUICK BLOOD TIPS</h2>\n" +
"                                                    <p style=\"color:#404040;font-size:16px;line-height:22px;font-weight:lighter;padding:0;margin:0\">To give blood, you must be healthy, at least 17 years old, and weigh at least 110 pounds. The most needed blood types are O+, O-, AB- and B-. These blood types are absolutely critical. If you have one of the critical blood types but do not have a donor card, go to the blood camps anyway!<br>If you have any reason to believe you have AIDS, do not donate blood." +
"\n" +
"If you have given blood in the last 56 days (8 weeks), you cannot give blood again, even if you have one of the critical blood types.\n" +
"Be a proud donor now! Login and donate through our site:<a href=http://localhost:45859/Minorproject/>Click here!</a></p>\n" +
"                                                </td>\n" +
"                                            </tr>\n" +
"                                            <tr>\n" +
"                                            <td colspan=\"4\">\n" +
"                                                <div style=\"width:100%;text-align:center;margin:30px 0\">\n" +
"                                                    <table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:HelveticaNeue-Light,Arial,sans-serif;margin:0 auto;padding:0\">\n" +
"                                                    <tbody>\n" +
"                                                    	<tr>\n" +
"                                                            \n" +
"                                                      	</tr>\n" +
"                                                   	</tbody>\n" +
"                                                    </table>\n" +
"                                               	</div>\n" +
"                                           	</td>\n" +
"                                       	</tr>\n" +
"                                        <tr><td colspan=\"3\" height=\"30\"></td></tr>\n" +
"                                 	</tbody>\n" +
"                                    </table>\n" +
"                             	</td>\n" +
"                   			</tr>\n" +
"                            \n" +
"                           \n" +
"                          	</tbody>\n" +
"                            </table>\n" +
"                  			<table align=\"center\" width=\"750px\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#333\" style=\"width:750px!important\">\n" +
"                            <tbody>\n" +
"                            	<tr>\n" +
"                                	<td>\n" +
"                                        <table width=\"630\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#333\">\n" +
"                                        <tbody>\n" +
"                                        	<tr><td colspan=\"2\" height=\"30\"></td></tr>\n" +
"                                            <tr>\n" +
"                                            	<td width=\"360\" valign=\"top\">\n" +
"                                                	<div style=\"color:#a3a3a3;font-size:12px;line-height:12px;padding:0;margin:0\">&copy; 2016. All rights reserved.</div>\n" +
"                                                	<div style=\"line-height:5px;padding:0;margin:0\">&nbsp;</div>\n" +
"                                                	<div style=\"color:#a3a3a3;font-size:12px;line-height:12px;padding:0;margin:0\"></div>\n" +
"                                        		</td>\n" +
"                                              	<td align=\"right\" valign=\"top\">\n" +
"                                                	<span style=\"line-height:20px;font-size:10px\"><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"http://i.imgbox.com/BggPYqAh.png\" alt=\"fb\"></a>&nbsp;</span>\n" +
"                                                    <span style=\"line-height:20px;font-size:10px\"><a href=\"https://twitter.com\" target=\"_blank\"><img src=\"http://i.imgbox.com/j3NsGLak.png\" alt=\"twit\"></a>&nbsp;</span>\n" +
"                                                    <span style=\"line-height:20px;font-size:10px\"><a href=\"https://plus.google.com\" target=\"_blank\"><img src=\"http://i.imgbox.com/wFyxXQyf.png\" alt=\"g\"></a>&nbsp;</span>\n" +
"                                              	</td>\n" +
"                                            </tr>\n" +
"                                            <tr><td colspan=\"2\" height=\"5\"></td></tr>\n" +
"                                           \n" +
"                                      	</tbody>\n" +
"                                        </table>\n" +
"                                   	</td>\n" +
"                  				</tr>\n" +
"                          	</tbody>\n" +
"                            </table>\n" +
"                  		</td>\n" +
"                	</tr>\n" +
"              	</tbody>\n" +
"                </table>\n" +
"            </td>\n" +
"		</tr>\n" +
" 	</tbody>\n" +
"    </table>\n" +
"</div>\n" +
"</body>\n" +
"</html>",
             "text/html");
           
	   Transport.send(message);

	   System.out.println("Thank you for signing up ......Please check your mails");

      } catch (MessagingException e) {
         e.printStackTrace();
      }

%>

<jsp:forward page="index.html"/>
<script>
    slert("Check Your Emails First");
    </script>
