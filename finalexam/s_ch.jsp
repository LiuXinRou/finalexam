<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!-- Step 0: import library -->
<html>
    <head>
        <title>JSP check</title>
    </head>
    <body>      
<%
            try {
                Class.forName("com.mysql.jdbc.Driver");	  
                try {
                
                    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                    Connection con=DriverManager.getConnection(url,"root","1234");   				
                    if(con.isClosed())
                    out.println("連線建立失敗");
                    else {
            //Step 3: 選擇資料庫   
            
                    String name =request.getParameter("name");
                    String type =request.getParameter("type");
                    String pic=request.getParameter("pic");
                    String director =request.getParameter("director");
                    String actor=request.getParameter("actor");
                    String time =request.getParameter("time");
                    String grade=request.getParameter("grade");
                    String point1=request.getParameter("point1");
                    String point2=request.getParameter("point2");
                    String point3=request.getParameter("point3");
                    String introduce=request.getParameter("introduce");
                    String iframe=request.getParameter("iframe");
                    String stock=request.getParameter("stock");                    

                    String price=request.getParameter("price");                    

            
            //Step 4: 執行 SQL 指令	
            con.createStatement().execute("USE `finalexam_login`");
            request.setCharacterEncoding("utf-8");
            String sql="UPDATE `perflim` SET name = '"+name+"', price='"+price+"',type='"+type+"',href='',img='"+pic+"',stock='"+stock+"',director='"+director+"',actor='"+actor+"',time='"+time+"',grade='"+grade+"',point1='"+point1+"',point2='"+point2+"',point3='"+point3+"',introduce='"+introduce+"',iframe='"+iframe+"' WHERE name ='"+name+"'";
                    int no=con.createStatement().executeUpdate(sql); //可回傳異動數
                    if (no > 0)
                           {
       out.print("<script>alert('修改成功!');window.location='product.jsp'</script>");

       con.close();
       } else
            {
                out.print("<script>alert('修改失敗!');window.location='shopping_check.jsp'</script>");
            }                    
                }
                }
                catch (SQLException sExec) {
                    out.println("SQL錯誤"+sExec.toString());
                }
            }
            catch (ClassNotFoundException err) {
            out.println("class錯誤"+err.toString());
            }
            %>
        </body>
        </html>
        