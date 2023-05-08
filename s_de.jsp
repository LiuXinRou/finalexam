<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
            try {
            //Step 1: 載入資料庫驅動程式 
                Class.forName("com.mysql.jdbc.Driver");
                try {
            //Step 2: 建立連線 	
                    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                    Connection con=DriverManager.getConnection(url,"root","1234");
                    String sql="USE `finalexam_login`";
                         request.setCharacterEncoding("utf-8");
                         con.createStatement().execute(sql);
                    if(con.isClosed())
                    out.println("連線建立失敗");
                    else {
            //Step 3: 選擇資料庫   
                    String name =request.getParameter("name");
                    
            //Step 4: 執行 SQL 指令	
           
  sql=" DELETE FROM `perflim` WHERE name = '"+name+"'";
  int no=con.createStatement().executeUpdate(sql); //可回傳異動數
  if (no > 0)
         {
out.print("<script>alert('刪除成功!');window.location='product.jsp'</script>");

con.close();
}
else
         {
                 out.print("<script>alert('刪除失敗!');window.location='back.jsp'</script>");
         }
  
            //Step 6: 關閉連線
                    con.close();
            //Step 5: 顯示結果 
                    //直接顯示最新的資料
                    
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