

<%@page import="java.sql.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>




<%
    
String name=(String)session.getAttribute("name");
session.setAttribute("name", name);
String bg=(String)session.getAttribute("bg");
session.setAttribute("bg", bg);
String city=(String)session.getAttribute("city");
session.setAttribute("city", city);
String dob=(String)session.getAttribute("dob");
String address=(String)session.getAttribute("address");
long phone=(Long)session.getAttribute("phone");
 String phone1=Long.toString(phone);
session.setAttribute("phone1",phone1);

String regid="";

String email=(String)session.getAttribute("email");
session.setAttribute("email",email);
String status="yes";
Date date = new Date();
String date1=date.toString();
Calendar cal = Calendar.getInstance();
    cal.setTime(date);
     String year =  Integer.toString(cal.get(Calendar.YEAR));
     int fin_year=Integer.parseInt(year);
     String dobhalf=dob.substring(0,4);
     int dob1=Integer.parseInt(dobhalf);
    // String d=date1.substring(24,28);
     // int d1=Integer.parseInt(d);
out.print(fin_year);
out.print(dob1);
out.print(fin_year-dob1);

if((fin_year-dob1)>=18 && fin_year-dob1<60){
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";
Connection conn = DriverManager.getConnection(url,user,password); 
 Statement st=conn.createStatement();
 String query="insert into DONOR_DETAILS values('"+bg+"','"+city+"','"+dob+"','"+address+"','"+name+"','"+phone+"','"+email+"','"+status+"','"+date+"','"+regid+"')";
 st.executeUpdate(query);

 conn.close();
//out.print(ph);
%>


<jsp:forward page="donorprint.jsp"/>

<%



}

else{

%>
<jsp:include page="donorform.jsp"/>
<script>
    alert("You are not eligible to donate,your age must be between 18 and 60 years:)")
    </script>

<%
    
}
%>