package org.apache.jsp.Admin.taxi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<head>\n");
      out.write("\t\t<!-- Mobile Specific Meta -->\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\t\t<!-- Favicon-->\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"img/fav.png\">\n");
      out.write("\t\t<!-- Author Meta -->\n");
      out.write("\t\t<meta name=\"author\" content=\"colorlib\">\n");
      out.write("\t\t<!-- Meta Description -->\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\n");
      out.write("\t\t<!-- Meta Keyword -->\n");
      out.write("\t\t<meta name=\"keywords\" content=\"\">\n");
      out.write("\t\t<!-- meta character set -->\n");
      out.write("\t\t<meta charset=\"UTF-8\">\n");
      out.write("\t\t<!-- Site Title -->\n");
      out.write("\t\t<title>Taxi</title>\n");
      out.write("\n");
      out.write("\t\t<link href=\"https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700\" rel=\"stylesheet\"> \n");
      out.write("\t\t\t<!--\n");
      out.write("\t\t\tCSS\n");
      out.write("\t\t\t============================================= -->\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/linearicons.css\">\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/nice-select.css\">\t\t\t\t\t\t\t\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/animate.min.css\">\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/jquery-ui.css\">\t\t\t\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("\t\t</head>\n");
      out.write("\t\t<body>\t\n");
      out.write("\t\t\t  <header id=\"header\">\n");
      out.write("\t\t  \t\t<div class=\"header-top\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t    <div class=\"container main-menu\">\n");
      out.write("\t\t\t    \t<div class=\"row align-items-center justify-content-between d-flex\">\n");
      out.write("\t\t\t    \t\t<a href=\"index.html\"><img src=\"ico.png\" alt=\"\" title=\"\" /></a>\t\t\n");
      out.write("\t\t\t\t\t\t<nav id=\"nav-menu-container\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav-menu\">\n");
      out.write("\t\t\t\t\t\t\t  <li class=\"menu-active\"><a href=\"template.jsp\">Home</a></li>\n");
      out.write("                                                           <li class=\"menu-has-children\"><a href=\"\">DriverDetails</a>\n");
      out.write("                                                               <ul>  <li><a href=\"Driver.jsp\">Driver</a></li>\n");
      out.write("                                                                   <li><a href=\"DriverAssign.jsp\">DriverAssign</a></li>\n");
      out.write("                                                               </ul>\n");
      out.write("\t\t\t\t\t\t\t  <li><a href=\"Student.jsp\">Student</a></li>\n");
      out.write("\t\t\t\t\t\t\t  <li><a href=\"Bus.jsp\">Bus</a></li>\n");
      out.write("                                                          <li class=\"menu-has-children\"><a href=\"\">RouteDetails</a>\n");
      out.write("                                                              <ul>  <li><a href=\"Route.jsp\">Route</a></li>\n");
      out.write("                                                            <li><a href=\"RouteAssign.jsp\">RouteAssign</a></li>\n");
      out.write("                                                              </ul>\n");
      out.write("\t\t\t\t\t\t\t  <li class=\"menu-has-children\"><a href=\"\">AddingDatas</a>\n");
      out.write("\t\t\t\t\t\t\t    <ul>\n");
      out.write("\t\t\t\t\t\t\t      <li><a href=\"Class.jsp\">Class</a></li>\n");
      out.write("\t\t\t\t\t\t\t      <li><a href=\"Division.jsp\">Division</a></li>\n");
      out.write("\t\t\t\t\t\t\t      <li class=\"menu-has-children\"><a href=\"\">AddingPlaceDetails</a>\n");
      out.write("\t\t\t\t\t\t\t        <ul>\n");
      out.write("\t\t\t\t\t\t\t          <li><a href=\"State.jsp\">State</a></li>\n");
      out.write("\t\t\t\t\t\t\t          <li><a href=\"District.jsp\">Distrct</a></li>\n");
      out.write("                                                                  <li><a href=\"Place.jsp\">Place</a></li>\n");
      out.write("\t\t\t\t\t\t\t        </ul>\n");
      out.write("\t\t\t\t\t\t\t      </li>\t\t\t\t\t              \n");
      out.write("\t\t\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t\t\t  </li>\n");
      out.write("                                                           <li class=\"menu-has-children\"><a href=\"\">ViewDetails</a>\n");
      out.write("                                                              <ul>  <li><a href=\"ViewParent.jsp\">Parent Details</a></li>\n");
      out.write("                                                            <li><a href=\"ViewComplaints.jsp\">Complaints</a></li>\n");
      out.write("                                                             <li><a href=\"ViewNotifications.jsp\">Notifications</a></li>\n");
      out.write("                                                               <li><a href=\"ViewLocations.jsp\">Locations</a></li>\n");
      out.write("                                                               <li><a href=\"Viewqrcode.jsp\">QRcode Details</a></li>\n");
      out.write("                                                              </ul>\n");
      out.write("\t\t\t\t\t\t\t  <li><a href=\"ChangePassword.jsp\">Change Password</a></li>\t\t\t\t\t\t\t  \t\t\t          \t          \n");
      out.write("                                                          <li><a href=\"../../Guest/Login_v9/Login_v9/Login.jsp\">Logout</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</nav><!-- #nav-menu-container -->\t\t\n");
      out.write("\t\t\t    \t</div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("\t\t\t  </header><!-- #header -->\n");
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
