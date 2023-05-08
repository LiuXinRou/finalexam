<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
        sql = "UPDATE `signin` SET `id`='"+request.getParameter("id")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);
	    sql = "UPDATE `signin` SET `email`='"+request.getParameter("email")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);	
        sql = "UPDATE `signin` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";		
	    con.createStatement().execute(sql);	
        sql = "UPDATE `signin` SET `phone`='"+request.getParameter("phone")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);	
	    sql = "UPDATE `signin` SET `address`='"+request.getParameter("address")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);	
	    con.close();//結束資料庫連結
	    out.println("更新成功!! 請<a href='member.jsp'>按此</a>回會員頁面!!");
%>   
      
    