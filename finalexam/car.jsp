<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>電影宅急便</title>

    <style>
        @import url(assets/css/index.css);
        @import url(assets/css/car.css);
    </style>
</head>

<body>
    <%
    if(session.getAttribute("id")==null){
        %>
			<%out.print("<script>alert('請先登入!'); window.location='login.jsp'</script>");%>
		<%
    }
    else{
        Class.forName("com.mysql.jdbc.Driver");
          String url4="jdbc:mysql://localhost/";
          Connection con4=DriverManager.getConnection(url4,"root","1234");
          String sql4="USE finalexam_login";
          request.setCharacterEncoding("utf-8");
          con4.createStatement().execute(sql4);
          String id = (String)session.getAttribute("id");
          String pid=request.getParameter("pid");

          sql4="select * from `cart`, `perflim` where id='" + id + "' AND cart.product_id = perflim.product_id";
          ResultSet rs4=con4.createStatement().executeQuery(sql4);
          rs4.next();
          int q=0;
          int totalprice=0;
			
          q+=Integer.parseInt(rs4.getString("quantity"));
          totalprice+=Integer.parseInt(rs4.getString("quantity"))*Integer.parseInt(rs4.getString("price"));
		  String sql5="USE finalexam_login";
		  sql5="insert cart(totalpri) values('"+totalprice+"')";
          con4.createStatement().execute(sql5);

           sql4="select * from `cart`, `perflim` where id='" + id + "' AND cart.product_id = perflim.product_id";
          ResultSet rs5=con4.createStatement().executeQuery(sql4);

          ResultSet rs6=con4.createStatement().executeQuery(sql4);


          sql4="SELECT SUM(`quantity`), SUM(`totalpri`) FROM `cart` WHERE `id`='"+id+"'";
          ResultSet rs7=con4.createStatement().executeQuery(sql4);
          rs7.next();

%>        
        <section>
            <div class="all-car">
                <div class="car">                
                    <div class="car_title">
                    <h3>購 物 車</h3>
                    </div>
                    <div class="car_title_ti">
                        <div class="car_inside_title_ti_h4"><h4>商品圖</h4></div>
                        <div class="car_inside_title_ti_h4"><h4>單價</h4></div>
                        <div class="car_inside_title_ti_h4"><h4>數量</h4></div>
                        <div class="car_inside_title_ti_h4"><h4>小計</h4></div>                     
                    </div>
                    <%
                        if(rs6.next()){
                            while(rs5.next()){
                            out.println("<form action='cardelete.jsp' method='post' >");
                            out.println("<div class='car_inside'>");
                            out.println("<div class='car_inside_img'><img src='"+rs5.getString(5)+"'></div>");
                            out.println("<div class='car_inside_text'><h4>$"+rs5.getString(4)+"</h4></div>");
                            out.println("<div class='car_inside_text'><h4>"+rs5.getString(2)+"</h4></div>");
                            out.println("<div class='car_inside_text'><h4>"+rs5.getString(6)+"</h4></div>");
                            out.println("<button class='car_inside_text' name='delete' value='"+rs5.getString(3)+"'>x</button>") ;
                            out.println("</div><hr>");
                            out.println("</form>");
                            }
                        }
                        else{
                            out.println("");
                        }
                    %>
                    <div class="car_total" >
                        <h3>商品總件數：<%=rs7.getString(1)%> </h3>
                        <h3>總 計 金 額：$<%=rs7.getString(2)%></h3>  
                    </div>
                    
                    <div class="car_btn">
                        <a href="product.jsp"><input type="button" value="還沒買夠嗎"></a>
                        <input type="button"  value="決定好了啊" onclick="location.href='checkout.jsp'"></a>
                    </div>
                    
                </div>
            </div>
        </section>
     <%}%>   
        <footer>
            <div class="footer">
                <div class="footer1">
                    <img src="assets/img/box.png" style="height:40px;width:40px">
                    <div class="footer_text1">
                        <h2>電影宅急便</h2>
                    </div>
                </div>
                <div class="footer2">
                    <div class="footer2_text1">
                        <h3>TEL:+886347261821</h3>
                    </div>
                    <div class="footer2_text2">
                        <h3>地址:桃園市新中北路200號</h3>
                    </div>
                </div>
                <div class="footer3">
                    <div class="footer3_img">
                        <a href="https://www.facebook.com/" target="_blank"><img src="assets/img/fb.png" style="height:35px;width:35px"></a>
                        <a href="https://www.instagram.com/" target="_blank"><img src="assets/img/ig.png" style="height:35px;width:35px;margin-left: 15px;"></a>
                    </div>
                </div>
                <div class="footer4">
                    <div class="footer4_text">
                        <h6>CopyRight @ 電影宅急便 All Rights Reserved</h6>
                        
                    </div> 
                </div>
            </div>
        </footer>
</body>
<script src="assets/js/index.js"></script>
</html>