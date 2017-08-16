package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import javax.swing.*;
import java.lang.*;

public final class donorinput_jsp extends org.apache.jasper.runtime.HttpJspBase
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


      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (true) {
        _jspx_page_context.forward("finaldonorinput.jsp");
        return;
      }
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
