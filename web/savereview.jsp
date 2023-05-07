<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String menu = request.getParameter("dishName");
    String uname = (String)session.getAttribute("name").toString();
    String rating = request.getParameter("rating");
    String comment = request.getParameter("commentt");
        try 
        {
            String sql = "insert into review(menu, uname, rating, comment) values(?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, menu);
            pstmt.setString(2, uname);
            pstmt.setString(3, rating);
            pstmt.setString(4, comment);
            
            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("addReview.jsp");
            }
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
%>