

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>

<%
    
String username=request.getParameter("username");    
String password=request.getParameter("password");

if(username.equals("root") && password.equals("123456"))
{
%>
<jsp:forward page="admin_page.jsp"/>
<%
}










    session.setAttribute("username",username);

Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sahejeet","sahejeet");
PreparedStatement ps=conn.prepareStatement("select * from REG_TABLE where username=? and password=?");
ps.setString(1,username);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
%>
<jsp:forward page="home.jsp"/>
<%                                       
    
}
else
{


%>
<jsp:include page="index.html"/>
<script>
    alert("Wrong username or password");
    </script>
<%
}
conn.close();

%>
