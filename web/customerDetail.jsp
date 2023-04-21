<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    String CustomerName = request.getParameter("CustomerName");
    String CustomerNumber = request.getParameter("CustomerNumber");
    session.setAttribute("mobile", CustomerNumber);
    try {
        String sql = "insert into customerdetail(custName, custMobile) values(?, ?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, CustomerName);
        pstmt.setString(2, CustomerNumber);
        int row = pstmt.executeUpdate();
        if (row > 0) {
%>
<script>
    alert("Welcome To Food Factory");
    window.location = "food.jsp";
</script>
<%
//                response.sendRedirect("food.jsp");
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
%>