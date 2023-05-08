<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>電影宅急便</title>

    <style>
        @import url(assets/css/index.css);
        @import url(assets/css/checkout.css);
    </style>
</head>

<%

if(session.getAttribute("id")==null){
    out.print("您尚未登入;window.location='login.jsp'");
}
else{
    
    String id=(String)session.getAttribute("id");
    sql="select * from `cart`, `perflim` where id='" + id + "' AND cart.product_id = perflim.product_id";
    ResultSet rs=con.createStatement().executeQuery(sql);
    String sql5="use finalexam_login";
    con.createStatement().execute(sql5);
    sql5="SELECT SUM(`quantity`), SUM(`totalpri`) FROM `cart` WHERE `id`='"+id+"'";
    ResultSet rs7=con.createStatement().executeQuery(sql5);
    rs7.next();
    

%>
<body>
    <div id="main">
        <header>
            <div id="header">
                <div id="logo">
                    <img src="assets/img/box.png" style="height:40px;width:40px;margin-right:10px;margin-top: 10px;">
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
                            <input class="h_n1_text_search" id="textbox" type="search" placeholder="搜索您想要的商品">
                            <a href="index.jsp"><p id="h_n_text_2"><img src="assets/img/home.png" class="h_nav2_icon">首頁</p></a>
                            <a href="member.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                            <a href="Hotmovie.jsp"><p id="h_n_text_2" style="margin-top:30px;"><img src="assets/img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                            <a href="product.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</p></a>
                            <a href="plot.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">劇情片</p></a>
                            <a href="fantasy.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                            <a href="animation.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">動畫片</p></a>
                            <a href="car.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                            <a href="about.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登入</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>           
        </header>
        <section>
            <div class="all-checkout">
                <div class="checkout">
                    <div class="checkout_title">
                        <h3>訂單確認</h3>
                    </div>
                    <div class="checkout_title_ti">
                        <div class="checkout_inside_title_ti_h4"><h4>商品圖</h4></div>
                        <div class="checkout_inside_title_ti_h4"><h4>商品名稱</h4></div>
                        <div class="checkout_inside_title_ti_h4"><h4>單價</h4></div>
                        <div class="checkout_inside_title_ti_h4"><h4>數量</h4></div>
                        <div class="checkout_inside_title_ti_h4"><h4>小計</h4></div>  
                    </div>
                    <%
                    while(rs.next()){
                        out.print("<div class='checkout_inside'>");
                        out.print("<div class='checkout_inside_img'><img src="+rs.getString("img")+">");
                        out.print("</div>");
                        out.print("<div class='checkout_inside_text1'>");
                        out.print("<h4>"+rs.getString("name")+"</h4>");
                        out.print("</div>");
                        out.print("<div class='checkout_inside_text'>");
                        out.print("<h4>$"+rs.getString("price")+"</h4>");
                        out.print("</div>");
                        out.print("<div class='checkout_inside_text'>");
                        out.print("<h4>$"+rs.getString("totalpri")+"</h4>");
                        out.print("</div>");
                        out.print("</div>");
                        out.print("<hr>");
                    }
                    %>
                
                    
                <form action="checkorder.jsp" method="post">
                    <div class="checkout_order"> 
                        <div class="checkout_order_1">
                            <div class="checkout_order_text1"><h3>訂單備註：</h3></div>
                            <div class="checkout_order_inp1"><input type="text"  name="other" placeholder="統一編號/指定運送時間"></div>
                            <div class="checkout_order_text1"><h3>訂購人姓名：</h3></div>
                            <div class="checkout_order_inp1"><input type="text" name="name" placeholder="王曉明"></div>
                        </div>
                        <div class="checkout_order_2">
                            <div class="checkout_order_text2"><h3>寄送地址：</h3></div>
                            <div class="checkout_order_inp2"><input type="text" name="address" placeholder="XXX縣/市-XX區/鎮-XX路-XX號"></div>
                        </div>
                        <div class="checkout_order_3">
                            <div class="checkout_order_text3">
                                <h3>付款方式：</h3>
                            </div>
                            <div class="checkout_order_sel3" style="margin-top: 0.5%;">
                                <select name="pay" class="checkout_order_sel3">
                                    <option >請選擇付款方式</option>
                                    <option value="貨到付款">貨到付款</option>
                                    <option value="信用卡Visa/MasterCard/JBC">信用卡Visa/MasterCard/JBC</option>
                                    <option value="行動支付">行動支付</option>
                                </select>
                            </div>
                        </div>                        
                    </div>
                    <div class="checkout_total" >
                        <h3>商品總件數：<%=rs7.getString(1)%>  </h3>
                        <h3>總 計 金 額：$<%=rs7.getString(2)%> </h3>
                    </div>
                    <div class="checkout_btn">
                        <input type="submit" value="送出訂單">
                    </div>
                </form> 
             <%}%>             
                </div>
            </div>
        </section>
    
        
        
        
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