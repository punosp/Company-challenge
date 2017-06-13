package org.apache.jsp.jsp_002dhtml;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class show1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_out_value_nobody.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("  <title>Show Details</title>\n");
      out.write("  <link rel=\"SHORTCUT ICON\" HREF=\"jsp-html/images/logo.ico\">\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("  <link href=\"http://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"http://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"/AcmeLtd/jsp-html/css/style.css\">\n");
      out.write("  <style>\n");
      out.write("      .container-fluid {\n");
      out.write("      padding: 10px 50px;\n");
      out.write("  }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body id=\"myPage\" data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"60\">\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("           <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                     \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"UserController?page=home\"><img class=\"img-responsive\" src=\"/AcmeLtd/jsp-html/images/logo2.png\" alt=\"LOGO\"></a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"UserController?page=home\">HOME</a></li>\n");
      out.write("        <li><a href=\"UserController?page=table&prepage=com\">TABLE</a></li>\n");
      out.write("        <li><a href=\"UserController?page=list\">LIST</a></li>\n");
      out.write("        <li><a href=\"UserController?page=tree\">TREE</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<div class=\"jumbotron text-center\" id=\"home\">\n");
      out.write("    <h1>Show Employee</h1> \n");
      out.write("    <hr>\n");
      out.write("</div>\n");
      out.write("    <!-- Container (About Section) -->\n");
      out.write("    <div id=\"show\" class=\"container-fluid\" style=\"margin-left: 60px; margin-right: 60px;margin-left: 60px\">\n");
      out.write("        <p style=\"text-align: left\"><a href=\"UserController?page=home\">Home</a> / <a href=\"UserController?page=table&prepage=com\">Employees</a> / ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sshow.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p> \n");
      out.write("        <div class=\"page-header\" style=\"margin-top: 0px\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("         \n");
      out.write("        <h1 style=\"float: left\"><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sshow.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b></h1><h3 style=\"white-space:pre\"> [Employee]</pre></h3>\n");
      out.write("         \n");
      out.write("    </div>\n");
      out.write("            \n");
      out.write("     <div class=\"row\" style=\"margin-top: 30px\">\n");
      out.write("         \n");
      out.write("         <div class=\"container\">\n");
      out.write("  <ul class=\"nav nav-tabs\">\n");
      out.write("    <li class=\"active\"><a href=\"#\">Show</a></li>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  </ul>\n");
      out.write("  <br>\n");
      out.write("  <form class=\"form-horizontal\" role=\"form\" style=\"width: 70%;margin-left: 5%\">\n");
      out.write("             <div class=\"form-group\">\n");
      out.write("                 <br>\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"usr\">Name:</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <p class=\"form-control-static\">");
      if (_jspx_meth_c_out_0(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"usr\">Designation:</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <p class=\"form-control-static\">");
      if (_jspx_meth_c_out_1(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("             <div class=\"form-group\">\n");
      out.write("      <label class=\"control-label col-sm-2\" for=\"usr\">Manager:</label>\n");
      out.write("      <div class=\"col-sm-10\">\n");
      out.write("        <p class=\"form-control-static\">");
      if (_jspx_meth_c_out_2(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("       <br><br>  \n");
      out.write("         \n");
      out.write("</div>   \n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("       \n");
      out.write("\n");
      out.write("    \n");
      out.write("    <footer class=\"container-fluid text-center\">\n");
      out.write("        <a href=\"#myPage\" title=\"To Top\">\n");
      out.write("    <span class=\"glyphicon glyphicon-chevron-up\"></span>\n");
      out.write("  </a>\n");
      out.write("            <p>Made By : Ashutosh Sonu</p>\t\t\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_out_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent(null);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sshow.name}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }

  private boolean _jspx_meth_c_out_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_1 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_1.setPageContext(_jspx_page_context);
    _jspx_th_c_out_1.setParent(null);
    _jspx_th_c_out_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sshow.designation}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_1 = _jspx_th_c_out_1.doStartTag();
    if (_jspx_th_c_out_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
    return false;
  }

  private boolean _jspx_meth_c_out_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_2 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_2.setPageContext(_jspx_page_context);
    _jspx_th_c_out_2.setParent(null);
    _jspx_th_c_out_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sshow.manager}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_2 = _jspx_th_c_out_2.doStartTag();
    if (_jspx_th_c_out_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
    return false;
  }
}
