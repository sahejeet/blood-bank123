

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>



<%
    String name=(String)session.getAttribute("username");
    
    
session.setAttribute("username",name);
    
    
    
    
String u=request.getParameter("username");
String password=request.getParameter("password");
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        

Class.forName(driver);
             
          Connection conn = DriverManager.getConnection(url,user,"sahejeet");                
         PreparedStatement ps=conn.prepareStatement("select * from REG_TABLE where username=? and password=?");

ps.setString(1,u);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
%>
<jsp:forward page="profile.jsp"/>
<%                                       
    
}
else
{


%>
<jsp:include page="verifyaccount.jsp"/>
<script>
    window.alert("Wrong username or password");
    </script>
<%
}
conn.close();

%>
