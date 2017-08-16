package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class collapse_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<title> BLOOD TIPS </title>\n");
      out.write("<body>\n");
      out.write("<div class=\"container\">\n");
      out.write("<h2>BLOOD TIPS</h2> \n");
      out.write("<div class=\"panel-group\" id=\"accordion\">\n");
      out.write("    <div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse1\">Beat the Myth</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse1\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">Donating blood is safe and simple. It takes approximately 10-15 \n");
      out.write("minutes to complete the blood donation process. Any healthy adult \n");
      out.write("between 18 years and 60 years of age can donate blood. This is what you \n");
      out.write("can expect when you are ready to donate blood:</div>\n");
      out.write("      </div>\n");
      out.write("    </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse2\">Blood Groups</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse2\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">Donating blood is safe and simple. It takes approximately 10-15 \n");
      out.write("Blood type is determined by which antibodies and antigens the person's blood produces. An individual has two types of blood groups namely ABO-grouping and Rh-grouping. Rh is called as the Rhesus factor that has come to us from Rhesus monkeys.\n");
      out.write("\n");
      out.write("Most humans are in the ABO blood group. The ABO group has four categories namely \n");
      out.write("1) A group 2) B group 3) O group and 4) AB group\n");
      out.write("In the Rh- group, either the individual is said to be Rh- Negative or Rh- Positive.\n");
      out.write("\n");
      out.write("Thus blood group of any human being will mainly fall in any one of the following groups. \n");
      out.write("A positive or A negative \n");
      out.write("B positive or B negative \n");
      out.write("O positive or O negative \n");
      out.write("AB positive or AB negative.</div>\n");
      out.write("      </div>\n");
      out.write("    </div> \n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse3\">Universal Donors and Recipients</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse3\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">The most common blood type is O, followed by type A.\n");
      out.write("\n");
      out.write("Type O individuals are often called \"universal donors\" since their blood can be transfused into persons with any blood type. Those with type AB blood are called \"universal recipients\" because they can receive blood of any type.\n");
      out.write("\n");
      out.write("However, since approximately twice as many people in the general population have O and A blood types, a blood bank's need for this type of blood increases exponentially.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse4\">DO donate blood, only if you satisfy all of the following conditions</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse4\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">\n");
      out.write("-\tYou are between age group of 18-60 years.\n");
      out.write("-\tYour weight is 45 kgs or more.\n");
      out.write("-\tYour hemoglobin is 12.5 gm% minimum.\n");
      out.write("-\tYour last blood donation was 3 or more months earlier.\n");
      out.write("-\tYou are healthy and have not suffered from malaria, typhoid or other transmissible disease in the recent past.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse5\">DO NOT donate blood, if you have any of the following conditions</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse5\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">-\tCold / fever in the past 1 week.\n");
      out.write("-\tUnder treatment with antibiotics or any other medication.\n");
      out.write("-\tCardiac problems, hypertension, epilepsy, diabetes (on insulin therapy), history of cancer, chronic kidney or liver disease, bleeding tendencies, venereal disease etc.\n");
      out.write("-\tMajor surgery in the last 6 months.\n");
      out.write("-\tVaccination in the last 24 hours.\n");
      out.write("-\tHad a miscarriage in the last 6 months or have been pregnant / lactating in the last one year.\n");
      out.write("-\tHad fainting attacks during last donation.\n");
      out.write("-\tHave regularly received treatment with blood products.\n");
      out.write("-\tShared a needle to inject drugs/ have history of drug addiction.\n");
      out.write("-\tHad sexual relations with different partners or with a high risk individual.\n");
      out.write("-\tBeen tested positive for antibodies to HIV.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse6\">A Healthy Donor</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse6\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation.\n");
      out.write("\n");
      out.write("\tLow fat foods\n");
      out.write("\tIron rich foods</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse7\">Blood Bank</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse7\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">A blood bank is a place designed especially for the storage of blood and blood products. Large coolers hold these products at a constant temperature and they are available at a moment's notice.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse8\">About Blood Donation</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse8\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">Donating blood is a life saving measure especially when you have a rare blood type. Blood donation is safe and simple. It takes only about 10 minutes to donate blood - less than the time of an average telephone call. We can save upto 3 to 4 precious lives by donating blood.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("      <div class=\"panel-heading\">\n");
      out.write("        <h4 class=\"panel-title\">\n");
      out.write("          <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse9\">World Blood Donor Day</a>\n");
      out.write("        </h4>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"collapse9\" class=\"panel-collapse collapse in\">\n");
      out.write("        <div class=\"panel-body\">The day is celebrated to raise awareness globally about the need for regular and voluntary blood donation.</div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
