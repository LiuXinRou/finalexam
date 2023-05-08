<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("id")==null){
    out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
}
else{
    int stock=Integer.parseInt(request.getParameter("stock"));
    String product_id=request.getParameter("product_id");
}