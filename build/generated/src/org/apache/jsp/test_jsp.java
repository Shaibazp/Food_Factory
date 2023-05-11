package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title> HTML | Marquee hspace attribute</title>\n");
      out.write("\t<style>\n");
      out.write("\t\t.main {\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t.marq {\n");
      out.write("\t\t\tpadding-top: 30px;\n");
      out.write("\t\t\tpadding-bottom: 30px;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<h1 style=\"color:green; text-align:center;\">\n");
      out.write("\tGeeksforGeeks\n");
      out.write("</h1>\n");
      out.write("\t<div class=\"main\">\n");
      out.write("\t\t<marquee class=\"marq\"\n");
      out.write("\t\t\t\tbgcolor=\"Green\"\n");
      out.write("\t\t\t\tdirection=\"left\"\n");
      out.write("\t\t\t\tloop=\"\"\n");
      out.write("\t\t\t\thspace=\"25%\">\n");
      out.write("\t\t\thspace 0\n");
      out.write("\t\t</marquee>\n");
      out.write("\t\tOther content\n");
      out.write("\t\t<marquee class=\"marq\" bgcolor=\"Green\"\n");
      out.write("\t\t\t\tdirection=\"left\"\n");
      out.write("\t\t\t\tloop=\"\"\n");
      out.write("\t\t\t\thspace=\"45%\">\n");
      out.write("\t\t\thspace 50\n");
      out.write("\t\t</marquee>\n");
      out.write("\t\tOther content\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
