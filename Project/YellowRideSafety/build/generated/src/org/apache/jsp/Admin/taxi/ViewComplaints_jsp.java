package org.apache.jsp.Admin.taxi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewComplaints_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/taxi/header.jsp");
    _jspx_dependants.add("/Admin/taxi/footer.jsp");
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<br>\n");
      out.write("<br><br><br>\n");
      out.write("<br><br><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      database.ConnectionClass obj = null;
      synchronized (_jspx_page_context) {
        obj = (database.ConnectionClass) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new database.ConnectionClass();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>view complaints</title>\n");
      out.write("        <style>\n");
      out.write("input[type=text],input[type=password],select {\n");
      out.write("    width: 50%;\n");
      out.write("    padding: 12px 25px;\n");
      out.write("    margin: 8px 15px;\n");
      out.write("    display: inline-block;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("input[type=submit] {\n");
      out.write("    width: 30%;\n");
      out.write("    background-color: blueviolet;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 50px;\n");
      out.write("    \n");
      out.write("    border: none;\n");
      out.write("    border-radius: 4px;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit]:hover {\n");
      out.write("    background-color: #45a049;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main {\n");
      out.write("    border-radius: 5px;\n");
      out.write("    background-color:transparent;\n");
      out.write("    padding: 20px;\n");
      out.write("    margin-left:  350px;\n");
      out.write("    width: 40%;\n");
      out.write("}\n");
      out.write("label{\n");
      out.write("    color: brown;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("#customers {\n");
      out.write("    font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n");
      out.write("    border-collapse: collapse;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#customers td, #customers th {\n");
      out.write("    border: 1px solid #ddd;\n");
      out.write("    padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#customers tr:nth-child(even){background-color: #f2f2f2;}\n");
      out.write("\n");
      out.write("#customers tr:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("#customers th {\n");
      out.write("    padding-top: 12px;\n");
      out.write("    padding-bottom: 12px;\n");
      out.write("    text-align: left;\n");
      out.write("    background-color: peru;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form>\n");
      out.write("            <table id=\"customers\">\n");
      out.write("         <tr>\n");
      out.write("    <th>No</th>\n");
      out.write("    <th>Parent Id</th>\n");
      out.write("    <th>Complaint Description</th>\n");
      out.write("    <th>Date</th>\n");
      out.write("    <th>Time</th>\n");
      out.write("    \n");
      out.write("  </tr>\n");
      out.write("        \n");
      out.write("\n");
      out.write("          ");
 String p="select * from tbl_complaint ";
                ResultSet r3=obj.select(p);
                int i=1;
                while(r3.next())
                {
                    
               // String nam=r3.getString("bus_vehno");
                
      out.write("\n");
      out.write("                <tr> \n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(r3.getString("prnt_id"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r3.getString("com_des"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r3.getString("com_date"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r3.getString("com_time"));
      out.write("</td>\n");
      out.write("                </tr>    \n");
      out.write("                ");
 i++;
                
                }
                
        
      out.write("\n");
      out.write("         </table>\n");
      out.write("  </form>\n");
      out.write("\n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<br><br><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<img  src=\"img/footer-bottom.png\" alt=\"\">\n");
      out.write("\t\t\t</footer>\t");
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
