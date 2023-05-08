<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<% session.removeAttribute("id");
response.sendRedirect("index.jsp");
%>