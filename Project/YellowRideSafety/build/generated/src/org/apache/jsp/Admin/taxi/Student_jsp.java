package org.apache.jsp.Admin.taxi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Student_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\t\t\t\t\t  <li><a href=\"ChangePassword.jsp\">Change Password</a></li>\t\t\t\t\t\t\t  \t\t\t          \t          \n");
      out.write("                                                          <li><a href=\"../../Guest/Login.jsp\">Logout</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</nav><!-- #nav-menu-container -->\t\t\n");
      out.write("\t\t\t    \t</div>\n");
      out.write("\t\t\t    </div>\n");
      out.write("\t\t\t  </header><!-- #header -->\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("<br><br>\n");
      out.write("<br><br>\n");
      out.write("\n");
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
      out.write("        <title>Student Page</title>\n");
      out.write("        <script src=\"jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            function displaydivision(id)\n");
      out.write("            {\n");
      out.write("               // alert(id);\n");
      out.write("                $.ajax(\n");
      out.write("                        {\n");
      out.write("                            url: \"Ajaxdivision.jsp?id=\"+id,\n");
      out.write("                    success: function(result){\n");
      out.write("                        $(\"#div_id\").html(result);\n");
      out.write("                    }\n");
      out.write("                        });\n");
      out.write("            }\n");
      out.write("             function displaydistrict(id)\n");
      out.write("            {\n");
      out.write("                $.ajax(\n");
      out.write("                        {\n");
      out.write("                            url: \"AjaxPlace.jsp?id=\"+id,\n");
      out.write("                    success: function(result){\n");
      out.write("                        $(\"#distid\").html(result);\n");
      out.write("                    }\n");
      out.write("                        });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function displayplace(id)\n");
      out.write("            {\n");
      out.write("               // alert(id);\n");
      out.write("                $.ajax(\n");
      out.write("                        {\n");
      out.write("                            url: \"Ajaxdriver.jsp?id=\"+id,\n");
      out.write("                    success: function(result){\n");
      out.write("                        $(\"#place\").html(result);\n");
      out.write("                    }\n");
      out.write("                        });\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            #customers {\n");
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
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<style>\n");
      out.write(" input[type=text],input[type=password],select {\n");
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
      out.write("    background-color: #4CAF50;\n");
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
      out.write("    background-color: #f2f2f2;\n");
      out.write("    padding: 20px;\n");
      out.write("    margin-left:  350px;\n");
      out.write("    width: 40%;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("   <body>\n");
      out.write("        ");
 
         String id="";
         String stateid="";
         String districtid="";
         String placeid="";
         String admno="";
         String fname="";
         String lname="";
         String gend="";
         String blood="";
         String dob="";
         String state="";
         String place="";
         String dist="";
         String clas="";
         String div="";
         if(request.getParameter("submit")!=null)
    {
       
        String ad=request.getParameter("admno");
        String f=request.getParameter("fnam");
        String l=request.getParameter("lnam");
        String g=request.getParameter("gen");
        String b=request.getParameter("blod");
        String d=request.getParameter("dob");
        String s=request.getParameter("state");
        String p=request.getParameter("placename");
        String di=request.getParameter("dist");
        String cls=request.getParameter("clas");
        String divi=request.getParameter("divisionname");
        
        
        String idd=request.getParameter("hid");
        if(!idd.equals(""))
        { 
            String upd= "update tbl_student set stud_admno='"+ad+"',stud_fname='"+f+"',stud_lname='"+l+"',stud_gender='"+g+"',stud_blood='"+b+"',stud_dob='"+d+"',place_id='"+p+"',div_id='"+divi+"' where stud_id='"+idd+"'";
            if(obj.insert(upd))
            {
                System.out.println("Updated Successfully");
                
            }
        }  
        else
        {
            
        String insert="insert into tbl_student(stud_admno,stud_fname,stud_lname,stud_gender,stud_blood,stud_dob,div_id,place_id)values('"+ad+"','"+f+"','"+l+"','"+g+"','"+b+"','"+d+"','"+divi+"','"+p+"')";
        
        boolean b1= obj.insert(insert);
        
        if(b1)
        {
            System.out.println("Successfully inserted");
        }
        else
        {
            System.out.println("Failed to insert");
        }
        }
    } if(request.getParameter("delid")!=null)
        {
            String a=request.getParameter("delid");
            String del="delete from tbl_student where stud_id='"+a+"'";
            
            if(obj.insert(del))
            {
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Deleted\");\n");
      out.write("                </script>\n");
      out.write("               ");

            }
            
            else
            {
                System.out.println("Failed to delete");
            }
            
        }
              if(request.getParameter("edtid")!=null)
              {
                  id=request.getParameter("edtid");
                  
                  String sel="select * from tbl_student st inner join tbl_division d on st.div_id=d.div_id inner join tbl_class c on d.class_id=c.class_id inner join tbl_place p on st.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id where st.stud_id='"+id+"'";
                  System.out.println(sel);
                  
                  ResultSet r = obj.select(sel);
                  if(r.next())
                  {
                   
          admno=r.getString("stud_admno");
          fname=r.getString("stud_fname");
          lname=r.getString("stud_lname");
          gend=r.getString("stud_gender");
          blood=r.getString("stud_blood");
         dob=r.getString("stud_dob");
         state= r.getString("state_id");
         place=r.getString("place_id");
         dist=r.getString("dis_id");
         clas=r.getString("class_id");
         div=r.getString("div_id");
                      
                  }
              }
              
            
               
     
    
     
      out.write("\n");
      out.write("    <h2>Student</h2>\n");
      out.write("\n");
      out.write("<div id=\"main\">\n");
      out.write("  <form>\n");
      out.write("      \n");
      out.write("    <label for=\"admno\">Student Admission No</label>&nbsp;\n");
      out.write("    <input type=\"text\" id=\"admno\" name=\"admno\" placeholder=\"admission no..\"  value=\"");
      out.print(admno);
      out.write("\" >\n");
      out.write("    <input type=\"hidden\" name=\"hid\" required=\"\" value=\"");
      out.print(id);
      out.write("\"\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("          \n");
      out.write("      <div>\n");
      out.write("    <label for=\"fname\">Student First Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    <input type=\"text\" id=\"fnam\" name=\"fnam\" placeholder=\"student first name..\"pattern=\"[A-Za-z ]{1,30}\" required=\"\"  value=\"");
      out.print(fname);
      out.write("\" >\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("      <div>\n");
      out.write("    <label for=\"lnam\">Student Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    <input type=\"text\" id=\"lnam\" name=\"lnam\" placeholder=\"student last name..\" pattern=\"[A-Za-z ]{1,30}\" required=\"\" value=\"");
      out.print(lname);
      out.write("\" >\n");
      out.write("    </div> \n");
      out.write("    <div>\n");
      out.write("            <label for=\"Gender\">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input  ");
if(gend.equals("male")){
      out.write(" checked=\"\"");
}
      out.write(" type=\"radio\" name=\"gen\" value=\"male\" size=\"10\" />Male\n");
      out.write("            <input ");
if(gend.equals("female")){
      out.write(" checked=\"\"");
}
      out.write(" type=\"radio\" name=\"gen\" value=\"female\"size=\"10\" required=\"\"/>Female</td></tr>\n");
      out.write("        </div> \n");
      out.write("          <div>\n");
      out.write("    <label for=\"blood\">Blood Group</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    <input type=\"text\" id=\"blod\" name=\"blod\" placeholder=\"student blood group..\" required=\"\"  value=\"");
      out.print( blood);
      out.write("\" >\n");
      out.write("    </div>  \n");
      out.write("    <div>\n");
      out.write("            <label for=\"dob\">Dob</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"date\" id=\"dob\" name=\"dob\" placeholder=\"date of birth..\" value=\"");
      out.print(dob);
      out.write("\">\n");
      out.write("        </div> \n");
      out.write("         <div>\n");
      out.write("    <label for=\"StateName\">State Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    \n");
      out.write("          <Select name=\"statename\" onchange=\"displaydistrict(this.value)\">\n");
      out.write("              \n");
      out.write("        <option selected=\"selected\" value=\"\">Select</option>\n");
      out.write("        ");

        String s ="select * from tbl_state";
        ResultSet rl=obj.select(s);
        while(rl.next())
        {
            
        
         
      out.write("\n");
      out.write("         <option ");
 if(state.equals(rl.getString("state_id"))){
      out.write("selected=\"\"");
}
      out.write("value=\"");
      out.print(rl.getString("state_id"));
      out.write('"');
      out.write('>');
      out.print(rl.getString("state_name"));
      out.write("</option>\n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("          </select>\n");
      out.write("      </div> \n");
      out.write("          <div>\n");
      out.write("          <label for=\"DistrictName\">District</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("          <Select name=\"districtname\" id=\"distid\" onchange=\"displayplace(this.value)\">\n");
      out.write("        <option selected=\"selected\"value=\"\">Select</option>\n");
      out.write("        ");
 String ss="select * from tbl_district";
        ResultSet r2=obj.select(ss);
        while(r2.next())
        {
            
      out.write("\n");
      out.write("         <option ");
 if(dist.equals(r2.getString("dis_id"))){
      out.write("selected=\"\"");
}
      out.write("value=\"");
      out.print(r2.getString("dis_id"));
      out.write('"');
      out.write('>');
      out.print(r2.getString("dis_name"));
      out.write("</option>\n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("          </select>\n");
      out.write("          </div> \n");
      out.write("           <div>\n");
      out.write("          <label for=\"PlaceName\">Place</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("          <Select name=\"placename\" id=\"place\">\n");
      out.write("        <option selected=\"selected\"value=\"\">Select</option>\n");
      out.write("        ");

        String sss="select * from tbl_place";
        ResultSet r3=obj.select(sss);
        while(r3.next())
        {
            
      out.write("\n");
      out.write("         <option ");
 if(place.equals(r3.getString("place_id"))){
      out.write("selected=\"\"");
}
      out.write("value=\"");
      out.print(r3.getString("place_id"));
      out.write('"');
      out.write('>');
      out.print(r3.getString("place_name"));
      out.write("</option>\n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("          </select>\n");
      out.write("          </div> \n");
      out.write("          <div>\n");
      out.write("    <label for=\"Class Name\">Class Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    \n");
      out.write("          <Select name=\"class name\" onchange=\"displaydivision(this.value)\">\n");
      out.write("              \n");
      out.write("        <option selected=\"selected\"value=\"\">Select</option>\n");
      out.write("        ");

        String s1 = "select * from tbl_class";
        ResultSet rsel=obj.select(s1);
        while(rsel.next())
        {
            
        
         
      out.write("\n");
      out.write("         <option ");
 if(clas.equals(rsel.getString("class_id"))){
      out.write("selected=\"\"");
}
      out.write("value=\"");
      out.print(rsel.getString("class_id"));
      out.write('"');
      out.write('>');
      out.print(rsel.getString("class_name"));
      out.write("</option>\n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("          </select>\n");
      out.write("      </div>\n");
      out.write("         <div>\n");
      out.write("          <label for=\"DivisionName\">Division</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("          <Select name=\"divisionname\" id=\"\">\n");
      out.write("        <option selected=\"selected\"value=\"\">Select</option>\n");
      out.write("        ");

        String s2="select * from tbl_division";
        ResultSet r4=obj.select(s2);
        while(r4.next())
        {
            
      out.write("\n");
      out.write("         <option ");
 if(div.equals(r4.getString("div_id"))){
      out.write("selected=\"\"");
}
      out.write("value=\"");
      out.print(r4.getString("div_id"));
      out.write('"');
      out.write('>');
      out.print(r4.getString("div_name"));
      out.write("</option>\n");
      out.write("         ");

        }
        
      out.write("\n");
      out.write("          </select>\n");
      out.write("          </div> \n");
      out.write("      \n");
      out.write("      \n");
      out.write("\t<input type=\"submit\" name=\"submit\" value=\"ADD STUDENT\">\n");
      out.write("         <table id=\"customers\">\n");
      out.write("         <tr>\n");
      out.write("    <th>No</th>\n");
      out.write("    <th>Student Admission No</th>\n");
      out.write("    <th>Student First Name</th>\n");
      out.write("    <th>Student Last Name</th>\n");
      out.write("    <th>Gender</th>\n");
      out.write("    <th>Blood</th>\n");
      out.write("    <th>DoB</th>\n");
      out.write("    <th>State</th>\n");
      out.write("    <th>District</th>\n");
      out.write("    <th>Place</th>\n");
      out.write("    <th>Class</th>\n");
      out.write("    <th>Division</th>\n");
      out.write("    <th>Delete</th>\n");
      out.write("    <th>Edit</th>\n");
      out.write("  </tr>\n");
      out.write("  \n");
      out.write("        ");
 String p="select * from tbl_student st inner join tbl_division d on st.div_id=d.div_id inner join tbl_class c on d.class_id=c.class_id inner join tbl_place p on st.place_id=p.place_id inner join tbl_district dis on p.dis_id=dis.dis_id inner join tbl_state s on dis.state_id=s.state_id";
                ResultSet r5=obj.select(p);
                int i=1;
                while(r5.next())
                {
                    
                //String nam=r5.getString("place_name");
                
      out.write("\n");
      out.write("                <tr> \n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    <td>");
      out.print(r5.getString("stud_admno"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("stud_fname"));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    <td>");
      out.print(r5.getString("stud_lname"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("stud_gender"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("stud_blood"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("stud_dob"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("state_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("dis_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("place_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("class_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r5.getString("div_name"));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <td><a href =\"Student.jsp?delid=");
      out.print(r5.getString("stud_id"));
      out.write("\"><img src=\"../../Admin/taxi/Design/Icon/delete5.jfif\" width=\"35\" height=\"35\"></a></td>\n");
      out.write("                    <td><a href =\"Student.jsp?edtid=");
      out.print(r5.getString("stud_id"));
      out.write("\"><img src=\"../../Admin/taxi/Design/Icon/edit3.jfif\" width=\"35\" height=\"35\"></a></td>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("                ");
 i++;
                
                }
                
        
      out.write("\n");
      out.write("        \n");
      out.write("            </table>   </form>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("<br>\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<img  src=\"img/footer-bottom.png\" alt=\"\">\n");
      out.write("\t\t\t</footer>\t");
      out.write('\n');
      out.write('\n');
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
