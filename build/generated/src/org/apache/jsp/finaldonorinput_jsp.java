package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.swing.*;
import java.lang.*;
import java.util.Date;
import java.util.Calendar;

public final class finaldonorinput_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    
String name=(String)session.getAttribute("name");
session.setAttribute(name, "name");
String bg=(String)session.getAttribute("bg");
session.setAttribute(bg, "bg");
String city=(String)session.getAttribute("city");
session.setAttribute(city, "city");
String dob=(String)session.getAttribute("dob");
String address=(String)session.getAttribute("address");
long phone=(Long)session.getAttribute("phone");

String email=(String)session.getAttribute("email");
session.setAttribute(email, "email");
String status="yes";
Date date = new Date();
String date1=date.toString();
Calendar cal = Calendar.getInstance();
    cal.setTime(date);
     String year =  Integer.toString(cal.get(Calendar.YEAR));
     //int fin_year=Integer.parseInt(year);
    // String d=date1.substring(24,28);
     // int d1=Integer.parseInt(d);
out.print(year);
//out.print(fin_year);
//out.print(d1-fin_year);

/*if((d1-fin_year)>=18){
String driver ="oracle.jdbc.driver.OracleDriver";
        String url="jdbc:oracle:thin:@localhost:1521:xe";
        String user="sahejeet";
        String password="sahejeet";
Connection conn = DriverManager.getConnection(url,user,password); 
           
                
           Statement st=conn.createStatement();
              

 String query="insert into DONOR_DETAILS values('"+bg+"','"+city+"','"+dob+"','"+address+"','"+name+"','"+phone+"','"+email+"','"+status+"','"+date+"')";
          
          
             
           st.executeUpdate(query);
           
           



 conn.close();

 
 String ph=Long.toString(phone);
session.setAttribute(ph,"ph");
//out.print("HI");
}
*/

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
