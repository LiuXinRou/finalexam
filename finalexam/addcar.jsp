<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>


<%
				if(session.getAttribute("id")!=null){
                     Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="use finalexam_login";
				con.createStatement().execute(sql);
                String pid=request.getParameter("pid");
                String new_quantity = request.getParameter("quantity");
                String id=String.valueOf(session.getAttribute("id"));

                sql="SELECT * FROM `perflim` WHERE `product_id`='"+pid+"'";
                ResultSet rs=con.createStatement().executeQuery(sql);
                rs.next();

                String new_img=rs.getString(6);
                String new_price=rs.getString(3);
                int price=Integer.parseInt(new_price);
                int quantity=Integer.parseInt(new_quantity);
                int tolpri=price*quantity;
                sql="INSERT cart(`id`,`quantity`, `product_id`, `price`, `img`, `totalpri`)";
                sql+="VALUES('"+id+"',";
                sql+="'"+new_quantity+"',";
                sql+="'"+pid+"',";
                sql+="'"+new_price+"',";
                sql+="'"+new_img+"',";
                sql+="'"+tolpri+"')";
                con.createStatement().execute(sql);
                con.close();
                response.sendRedirect("car.jsp");
                }
                else{
                    out.println("<SCRIPT>alert('請先登入！');");
                    out.println("window.location='login.jsp'");
                    out.println("</SCRIPT>");
	                
                }
                
               



	
	
%>