<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String dname = request.getParameter("dname");
    String fcate = request.getParameter("fcate");
    String mcate = request.getParameter("mcate");
    String price = request.getParameter("price");
    String noplates = request.getParameter("noplates");
    String mobile = (String)session.getAttribute("mobile").toString();
    
   try 
        {

            // constructs SQL statement
            String sql = "insert into orderdetail(dishname, foodcate , menucate, price, qnt, mobile) value(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, dname);
            pstmt.setString(2, fcate);
            pstmt.setString(3, mcate);
            pstmt.setString(4, price);
            pstmt.setString(5, "1");
            pstmt.setString(6, mobile);
            int row = pstmt.executeUpdate();
            if (row > 0) {
                %>
<script>
    alert("Order Successfull...");
    window.location = "southindian.jsp";
</script>
<%
//                response.sendRedirect("southindian.jsp");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

%>