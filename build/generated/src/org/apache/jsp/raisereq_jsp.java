package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class raisereq_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/commonforall.jsp");
  }

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

      out.write('\n');
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title> BLOOD DONATION </title>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write(".ui { top: 0 !important;\n");
      out.write("      height: 90px !important;\n");
      out.write("      z-index: 2000;\n");
      out.write("      border-top: 4px solid #e42a20;\n");
      out.write("      position: absolute;\n");
      out.write("      background-color: #fff;\n");
      out.write("      left: 0;\n");
      out.write("      width: 100%;\n");
      out.write("      border-bottom: 1px solid #CBCBCB;\n");
      out.write("      box-shadow: 1px 1px 1px 0px rgba(0,0,0,0.09);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".uibottom {  bottom: 0;\n");
      out.write("\t         height: 50px;\n");
      out.write("\t         z-index: 2000;\n");
      out.write("             border-top: 1px solid #CBCBCB;\n");
      out.write("             position: fixed;\n");
      out.write("             background-color: #fff;\n");
      out.write("             left: 0 !important;\n");
      out.write("             width: 100%;\n");
      out.write("             border-bottom: 4px solid #e42a20;\n");
      out.write("             margin-top: 37%;\n");
      out.write("             box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.9);\n");
      out.write("             text-align: center;\n");
      out.write("              }\n");
      out.write("\n");
      out.write(".bodyy { background-image: url(abcd.jpg);\n");
      out.write("         width: 100%;\n");
      out.write("         color: white;\n");
      out.write("         text-align: center; }\n");
      out.write("              \n");
      out.write(".logoo { margin-top: 16px;\n");
      out.write("\t     transition: 0.3s all;\n");
      out.write("\t     position: absolute;\n");
      out.write("\t     left: 20px;\n");
      out.write("\t     top: 0;\n");
      out.write("\t     padding: 0px;\n");
      out.write("             \n");
      out.write("}\n");
      out.write("\n");
      out.write("a { color: #e42a20;\n");
      out.write("    font-size: 16px;\n");
      out.write("     \n");
      out.write("    line-height:1.5; \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".link { background-image: url(logo.jpg); \n");
      out.write("\t    width: 197px;\n");
      out.write("\t    height: 52px;\n");
      out.write("\t    display: block;\n");
      out.write("\t    background-size: 197px 52px;\n");
      out.write("\t    background-position: 0 0;\n");
      out.write("\t    background-repeat: no-repeat;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".replacement { text-indent: -9999px;\n");
      out.write("\t           text-transform: capitalize;\n");
      out.write("\t           display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".utility { margin: 16px 0 0;\n");
      out.write("\t       transition: 0.3s all;\n");
      out.write("\t       position: absolute;\n");
      out.write("\t       right: 20px;\n");
      out.write("\t       padding: 0;\n");
      out.write("\t       top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a.n { text-decoration: none;\n");
      out.write("    margin-right: 18px;\n");
      out.write("    color: black; \n");
      out.write("    float: left;\n");
      out.write("    padding: 8px 0;\n");
      out.write("    font-size: 18px;\n");
      out.write("    font-family: ariel; } \n");
      out.write("\n");
      out.write("a.n:hover { color: #e42a20;\n");
      out.write("            cursor: auto; \n");
      out.write("            border-radius: 5px;\n");
      out.write("            border: 2px solid #e42a20;\n");
      out.write("             }\n");
      out.write("\n");
      out.write(".navclearfix { content: \".\";\n");
      out.write("               display: block;\n");
      out.write("               height: 0;\n");
      out.write("               clear: both;\n");
      out.write("               visibility: hidden; \n");
      out.write("               margin: 0;\n");
      out.write("               padding: 0;\n");
      out.write("               float: right;\n");
      out.write("}\t\n");
      out.write("\n");
      out.write(".item { float: left;\n");
      out.write("        margin: 0;\n");
      out.write("        list-style-type: none; }\n");
      out.write("\n");
      out.write(".link-icon1 { background-image: url();\n");
      out.write("              background-size: 73px 110px;\n");
      out.write("              width: 73px;\n");
      out.write("              height: 55px; \n");
      out.write("}\t\n");
      out.write(".link-icon2 { background-image: url();\n");
      out.write("              background-size: 38px 110px;\n");
      out.write("              width: 39px;\n");
      out.write("              height: 55px; \n");
      out.write("}\t\n");
      out.write("\n");
      out.write("ul,li { font-size: 16px;\n");
      out.write("        font-family: none ;\n");
      out.write("        position: relative;\n");
      out.write("        color: #4d4d4f; \n");
      out.write("}\n");
      out.write("\n");
      out.write(".page { min-height: 100%;\n");
      out.write("        position: relative;\n");
      out.write("        overflow: hidden; }\n");
      out.write("\n");
      out.write(".banner { text-align: center;\n");
      out.write("          display: table;\n");
      out.write("          width: 100%;\n");
      out.write("          position: relative;\n");
      out.write("          z-index: 100;\n");
      out.write("}\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<header class=\"ui\">\n");
      out.write("<div class=\"logoo\">\n");
      out.write(" <a class=\"link\" href=\"home.jsp\">\n");
      out.write("  <span class=\"replacement\">BLOOD SERVICE\n");
      out.write("  </span>\n");
      out.write(" </a>\n");
      out.write("</div>\n");
      out.write("<nav class=\"utility\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("<a class=\"n\" href=\"home.jsp\">HOME</a> \n");
      out.write("<a class=\"n\" href=\"raisereq.jsp\">RAISE A REQUEST</a>\n");
      out.write("<a class=\"n\" href=\"donor.jsp\">DONATE BLOOD</a>\n");
      out.write("<a class=\"n\" href=\"collapse.jsp\">BLOOD TIPS</a> \n");
      out.write("<a class=\"n\" href=\"aboutus1.jsp\">ABOUT US</a>\n");
      out.write("<a class=\"n\" href=\"contactus.jsp\">CONTACT US</a> \n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("</nav>\n");
      out.write("</header>\n");
      out.write("    <div class=\"bodyy\"> fvkdfpogikokd\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("<footer class=\"uibottom\">Disclaimer: All rights reserved</footer> \t\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            input[type=text] {\n");
      out.write("    width: 60%;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    font-size: 12px;\n");
      out.write("    background-color: white;\n");
      out.write("    \n");
      out.write("    background-position: 10px 10px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding: 12px 20px 12px 40px;\n");
      out.write("}   \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        input[type=number] {\n");
      out.write("    width: 50%;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    font-size: 12px;\n");
      out.write("    background-color: white;\n");
      out.write("    \n");
      out.write("    background-position: 10px 10px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding: 12px 20px 12px 40px;\n");
      out.write("}   \n");
      out.write("            \n");
      out.write("input[type=email] {\n");
      out.write("    width: 50%;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    font-size: 12px;\n");
      out.write("    background-color: white;\n");
      out.write("    \n");
      out.write("    background-position: 10px 10px;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    padding: 12px 20px 12px 40px;\n");
      out.write("}   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".button {\n");
      out.write("    \n");
      out.write("    border: none;\n");
      out.write("       background-color: #5C8CA7;\n");
      out.write("       border-radius: 25px;\n");
      out.write("    color:white;\n");
      out.write("    padding: 10px 30px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    cursor: pointer;\n");
      out.write("    \n");
      out.write("    transition-duration: 0.4s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button2:hover {\n");
      out.write("    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);\n");
      out.write("}\n");
      out.write("            \n");
      out.write("body{\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    background-image: url(\"user.jpg\");\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("    \n");
      out.write("\n");
      out.write(" function checkform(form)\n");
      out.write("        {\n");
      out.write("            var inputs=form.getElementsByTagName('input');\n");
      out.write("            for(var i=0;i<inputs.length;i++){\n");
      out.write("                if(inputs[i].hasAttribute(\"required\")){\n");
      out.write("                    if(inputs[i].value==\"\")\n");
      out.write("                    {\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        alert(\"Please fill all the form fields\");\n");
      out.write("                        return false;\n");
      out.write("                        \n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            return true;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("     \n");
      out.write("       \n");
      out.write("        \n");
      out.write("         </script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("      ");

String name=(String)session.getAttribute("username");
    out.println("<br><br><br>");
    out.println("<p align=right>");
    out.println("<b>Welcome &nbsp;"+name+"</b>");
   
    out.println("<br>");
    out.println("<a href=index.html>LOGOUT</a>");
     out.println("</p>");
session.setAttribute("username",name);





      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("<form action=\"reqenter.jsp\" method=\"post\" onsubmit=\"return checkform(this)\">\n");
      out.write("    <fieldset>\n");
      out.write("        <legend><b>RAISE A REQUEST</b></legend>\n");
      out.write("<p align=\"center\">\n");
      out.write("    <label for=\"username\"><b>PATIENT NAME&nbsp;</b></label>\n");
      out.write("    <input type=\"text\" name=\"username\" id=\"username\" placeholder=\"Enter Patient Name\" required><br><br>\n");
      out.write("\n");
      out.write("<b>DOB&nbsp;</b><input type=\"date\" name=\"dob\"  required><br><br>\n");
      out.write("\n");
      out.write("<b>CITY&nbsp;</b><select name=\"city\"  required>\n");
      out.write("    <option selected=\"\" disabled=\"disabled\" value=\"select a City\" >Select a City</option>\n");
      out.write("    <option value=\"Agra\">Agra</option>\n");
      out.write("    <option value=\"Amritsar\">Amritsar</option>\n");
      out.write("    <option value=\"Bangalore\">Bangalore</option>\n");
      out.write("    <option value=\"Chandigarh\">Chandigarh</option>\n");
      out.write("    <option value=\"Delhi\">Delhi</option>\n");
      out.write("    <option value=\"Jaipur\">Jaipur</option>\n");
      out.write("    <option value=\"Goa\">Goa</option>\n");
      out.write("</select><br><br>\n");
      out.write("\n");
      out.write("<b>HOSPITAL&nbsp;</b><input type=\"text\" name=\"hospitalname\" placeholder=\"Hospital Name\" required><br><br>\n");
      out.write("\n");
      out.write("<b>BLOOD GROUP&nbsp;</b><select name=\"bg\" required>\n");
      out.write("    <option value=\"A+\">A+</option>\n");
      out.write("    <option value=\"A-\">A-</option>\n");
      out.write("    <option value=\"B+\">B+</option>\n");
      out.write("    <option value=\"B-\">B-</option>\n");
      out.write("    <option value=\"O+\">O+</option>\n");
      out.write("    <option value=\"O-\">O-</option>\n");
      out.write("    <option value=\"AB+\">AB+</option>\n");
      out.write("    <option value=\"AB-\">AB-</option>\n");
      out.write("</select><br><br>\n");
      out.write("<b>NO OF UNITS&nbsp;</b><input type=\"number\" name=\"units\" placeholder=\"Required Units\" required><br><br>\n");
      out.write("<input id=\"b1\" type=\"submit\" class=\"button button2\" name=\"submit\" onclick=\"return validate()\"><br><br>\n");
      out.write("</p>\n");
      out.write("\n");
      out.write("    </fieldset>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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