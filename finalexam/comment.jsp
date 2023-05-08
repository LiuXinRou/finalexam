<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.util.*"%>


<%
        if(session.getAttribute("id")!=null){
            try {
            //Step 1: 載入資料庫驅動程式 
                Class.forName("com.mysql.jdbc.Driver");
                try {
            //Step 2: 建立連線 	
                    String url1="jdbc:mysql://localhost/?serverTimezone=UTC";
                    String sql1="";
                    Connection con1=DriverManager.getConnection(url1,"root","1234");
                    if(con1.isClosed())
                    out.println("連線建立失敗");
                    else {
            //Step 3: 選擇資料庫   
                    sql1="use finalexam_login";
                    con1.createStatement().execute(sql1);
                    request.setCharacterEncoding("UTF-8");  
                    String new_fname=request.getParameter("fname");
                    String new_mname=request.getParameter("mname");
                    String new_content=request.getParameter("content");
                    sql1="SELECT * FROM `content` "; //算出共幾筆留言
                                    ResultSet rs=con1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql1);
                                    //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀
                                    //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
                                    rs.last();
                                    int total_content=rs.getRow();
                    int id;
                    id = total_content;
                    id += 1;
                    String star;
                    star = request.getParameter("rating");
                    
                    

                    //舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
                    //String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
                    //String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
                    //String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
                    java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
            //Step 4: 執行 SQL 指令	
                    sql1="INSERT into `content`(id, name,content,date,flim_name,star) VALUES ('"+id+"','"+new_mname+"', '"+new_content+"', '"+new_date+"' , '"+new_fname+"', '"+star+"')";     
                    con1.createStatement().execute(sql1);
                    out.print("<script>alert('提交成功'); window.location='product.jsp'</script>");
            //Step 6: 關閉連線
                    con1.close();
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
        }
        else{
            out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
        }
            
            %>