<%<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
            try {
            //Step 1: 載入資料庫驅動程式 
                Class.forName("com.mysql.jdbc.Driver");
                try {
            //Step 2: 建立連線 	
                    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                    String sql="";
                    Connection con=DriverManager.getConnection(url,"root","1234");
                    if(con.isClosed())
                    out.println("連線建立失敗");
                    else {
            //Step 3: 選擇資料庫   
                    sql="use finalexam_login";
                    con.createStatement().execute(sql);
                    request.setCharacterEncoding("UTF-8");  
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
                    String ids = request.getParameter("id");
                    String prices = request.getParameter("price");
                    String stocks = request.getParameter("stock");
                   

                    String stock=request.getParameter("stock");                    

                    String price=request.getParameter("price");                    

            
            //Step 4: 執行 SQL 指令	
            con.createStatement().execute("USE `finalexam_login`");
            request.setCharacterEncoding("utf-8");
  sql="INSERT into `perflim`(name,price,type,href,img,stock,director,actor,time,grade,point1,point2,point3,introduce,iframe,name2) VALUES ('"+name+"','"+price+"','"+type+"','','"+pic+"','"+stock+"','"+director+"','"+actor+"','"+time+"','"+grade+"','"+point1+"','"+point2+"','"+point3+"','"+introduce+"','"+iframe+"')";
                int no=con.createStatement().executeUpdate(sql); //可回傳異動數
                if (no > 0)
                        {
                out.print("<script>alert('新增成功!');window.location='product.jsp'</script>");

                con.close();
                }
                else
                        {
                                out.print("<script>alert('新增失敗!');window.location='back.jsp'</script>");
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