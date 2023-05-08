<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%try {

            Class.forName("com.mysql.jdbc.Driver");	  
            try {
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
				else{
            if(session.getAttribute("id")==null){
			out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
            }
            else{
            String product_id = request.getParameter("product_id");
			String id = (String) session.getAttribute("id");
			String delete = request.getParameter("delete");
            //String sid=request.getParameter("sid");
			String sql="USE finalexam_login";
			con.createStatement().execute(sql);
                sql="delete from `cart` where `id` = '"+id+"' AND `product_id`='"+delete+"'";
                con.createStatement().executeUpdate(sql);
			    out.print("<script>alert('刪除成功！'); window.location='car.jsp'</script>");
			con.close();
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