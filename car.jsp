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
<div id="main">
        <header>
            <div id="header">
                <div id="logo">
                    <img src="assets/img/box.png" style="height:40px;weight:40px;margin-right:10px;margin-top: 10px;">
                    <h1><a href="index.jsp" style="color:white;">電影宅急便</a></h1>
                        <div id="header_nav2">
                            <a href="index.jsp"><div id="h_nav2_text"><img src="assets/img/home.png" class="h_nav2_icon">首頁</div></a>
                            <div id="h_nav2_text3">|</div>
                            <a href="Hotmovie.jsp"><div id="h_nav2_text2"><img src="assets/img/fire.png" class="h_nav2_icon">近期熱門</div></a>
                            <a href="product.jsp"><div id="h_nav2_text2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</div></a>
                            <a href="car.jsp"><div id="h_nav2_text2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</div></a>
                            <a href="logout.jsp"><span id="h_nav2_text2" style="background: none;border: none;"><img src="assets/img/user.png" class="h_nav2_icon">登出</span></a>   
                        </div>
                        <div id="h_nav1_img" onclick="show()">
                            <button id="button" style="background: none;border: none;"><img src="assets/img/list.png" class="h_nav1_icon"></button>
                        </div>
                    <div id="header_nav1">
                        <div id="h_nav1_text1">
                            <a href="javascript:void(0)" id="h_n_text_1" onclick="show()">電影宅急便</a><hr>
                        </div>
                        <div id="h_nav1_text">
                           <form method="post" action="search.jsp">
                                <p><input class="h_n1_text_search" name="search" id="textbox" type="search" placeholder="搜索您想要的商品"> <br> 
                                <input type="submit" value="查詢"> </p>
                            </form>
                            <a href="index.jsp"><p id="h_n_text_2"><img src="assets/img/home.png" class="h_nav2_icon">首頁</p></a>
                            <a href="member.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                            <a href="Hotmovie.jsp"><p id="h_n_text_2" style="margin-top:30px;"><img src="assets/img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                            <a href="product.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</p></a>
                            <a href="plot.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">劇情片</p></a>
                            <a href="fantasy.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                            <a href="animation.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">動畫片</p></a>
                            <a href="car.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                            <a href="about.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登出</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>
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
                            out.println("<button style='height:20px width:20px'  name='delete' value='"+rs5.getString(3)+"'><img src='assets/img/delete.png' style=height:50px width:50px></button>") ;
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
                        <input type="button" value="還沒買夠嗎" onclick="location.href='product.jsp'">
                        <input type="button"  value="決定好了啊" onclick="location.href='checkout.jsp'">
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