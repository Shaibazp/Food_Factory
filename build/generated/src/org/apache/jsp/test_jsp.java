package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;
import java.sql.*;
import java.sql.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DB_Connection.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

    Connection con=null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_factory", "root", "root");
        //System.out.println("Connection Successful.................. jsp page");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <!-- Mirrored from uitheme.net/zipto/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Feb 2021 10:20:29 GMT -->\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- Mobile Metas -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0\">\n");
      out.write("\n");
      out.write("        <!-- Site Metas -->\n");
      out.write("        <title>Food Funday Restaurant - One page HTML Responsive</title>\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <!-- Site Icons -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Site CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <!-- Responsive CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("        <!-- color -->\n");
      out.write("        <link id=\"changeable-colors\" rel=\"stylesheet\" href=\"css/colors/orange.css\" />\n");
      out.write("        <!-- Modernizer -->\n");
      out.write("        <script src=\"js/modernizer.js\"></script>\n");
      out.write("        <!-- Custom Stylesheet -->\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j1.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j2.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j3.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j4.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j5.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j6.js\">\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\" src=\"js/j7.js\">\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <SCRIPT type=\"text/javascript\">\n");
      out.write("    window.history.forward();\n");
      out.write("    function noBack() \n");
      out.write("\t{ \n");
      out.write("\t\twindow.history.forward(); \n");
      out.write("\t}\n");
      out.write("</SCRIPT>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#example').DataTable({\n");
      out.write("                    dom: 'Bfrtip',\n");
      out.write("                    buttons: [\n");
      out.write("//                        'copyHtml5',\n");
      out.write("                        'excelHtml5',\n");
      out.write("//                        'csvHtml5',\n");
      out.write("//                        'pdfHtml5'\n");
      out.write("                    ]\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/c1.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/c2.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        <div id=\"site-header\">\n");
      out.write("            <header id=\"header\" class=\"header-block-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"main-menu\">\n");
      out.write("                            <!-- navbar -->\n");
      out.write("                            <nav class=\"navbar navbar-default\" id=\"mainNav\">\n");
      out.write("                                <div class=\"navbar-header\">\n");
      out.write("                                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("                                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                        <span class=\"icon-bar\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <div class=\"logo\">\n");
      out.write("                                        <a class=\"navbar-brand js-scroll-trigger logo-header\" href=\"#\">\n");
      out.write("                                            <img src=\"images/logo.png\" alt=\"\">\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                        <li class=\"active\"><a href=\"#banner\">Home</a></li>\n");
      out.write("                                        <li><a href=\"food_login.jsp\">Food Order</a></li>\n");
      out.write("                                        <li><a href=\"bills.jsp\">My Bills</a></li>\n");
      out.write("\n");
      out.write("                                        <li><a href=\"review.jsp\">Review</a></li>\n");
      out.write("                                        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("                                        <!--  <li><a href=\"#reservation\">Reservaion</a></li>-->\n");
      out.write("                                        <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("                                        <li><a href=\"AboutUS.jsp\">About us</a></li>\n");
      out.write("                                        <li><a href=\"#footer\">Contact us</a></li>\n");
      out.write("                                        <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- end nav-collapse -->\n");
      out.write("                            </nav>\n");
      out.write("                            <!-- end navbar -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end row -->\n");
      out.write("                </div>\n");
      out.write("                <!-- end container-fluid -->\n");
      out.write("            </header>\n");
      out.write("            <!-- end header -->\n");
      out.write("        </div>\n");
      out.write("        <div id=\"banner\" class=\"banner full-screen-mode parallax\">\n");
      out.write("            <div class=\"container pr\">\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                    <div class=\"banner-static\">\n");
      out.write("                        <div class=\"banner-text\">\n");
      out.write("                            <div class=\"banner-cell\">\n");
      out.write("                                <h1>Dinner with us  <span class=\"typer\" id=\"some-id\" data-delay=\"200\" data-delim=\":\" data-words=\"Friends:Family:Officemates\" data-colors=\"red\"></span><span class=\"cursor\" data-cursorDisplay=\"_\" data-owner=\"some-id\"></span></h1>\n");
      out.write("                                <h2>Accidental appearances </h2>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diem nonummy nibh euismod</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <table id=\"example\" class=\"display\" style=\"width:100%\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sr. No</th>\n");
      out.write("                    <th>Customer Name</th>\n");
      out.write("                    <th>Mobile No.</th>\n");
      out.write("                    <th>Visit Date</th>\n");
      out.write("                    <th>Visit Time</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                ");

                    PreparedStatement pstn = con.prepareStatement("select * from customerdetail");
                    ResultSet rst = pstn.executeQuery();
                    int no=1;
                    while (rst.next())
                    {  
                        
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
out.println(no++);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rst.getString(2));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rst.getString(3));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rst.getString(4));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rst.getString(5));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                        ");

                    }        
                
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/all.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- ALL PLUGINS -->\n");
      out.write("        <script src=\"js/custom.js\"></script>\n");
      out.write("    </body>\n");
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
