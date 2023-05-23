
<%@page import="org.apache.tomcat.util.http.fileupload.FileUtils"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.io.IOException"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.*" %>
<%@page import="java.io.File" %>
<%@page import="java.io.FileOutputStream" %>
<%@page import="net.glxn.qrgen.QRCode" %>
<%@page import="net.glxn.qrgen.image.ImageType" %>
<%@page import="java.io.*" %>
<%@page import="java.io.File"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@include file="DB_Connection.jsp"%>
<%
    String type = request.getParameter("type");
    String total = request.getParameter("total");
    String uname = (String)session.getAttribute("name").toString();
    String tableNo = (String)session.getAttribute("tableNo").toString();
    if(type.equals("online"))
    {
        try 
        {
            String sql = "insert into bills(cName, tableNo, totalAmount, bdate) values(?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, uname);
            pstmt.setString(2, tableNo);
            pstmt.setString(3, total);
            pstmt.setString(4, new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("payment.jsp?total="+total);
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
    }
    else
    {
        try 
        {
            String sql = "insert into bills(cName, tableNo, totalAmount, bdate) values(?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, uname);
            pstmt.setString(2, tableNo);
            pstmt.setString(3, total);
            pstmt.setString(4, new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("index.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
    }
%>
