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
        @import url(assets/css/back.css);
    </style>
</head>
<body>
<%if (session.getAttribute("id") != null){%>
    <%if (session.getAttribute("id") .equals("admin"))
    {%>
<%}
    else{out.print("<script>alert('你不是管理員請你離開 ! ');location.href='index.jsp'</script>");
}%>
<%}
    else{out.print("<script>alert('請先登入 ! ');location.href='login.jsp'</script>");
}%>
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
                            <!--<a href="car.jsp"><div id="h_nav2_text2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</div></a>-->
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
                            <a href="fantasy.jspl"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                            <a href="animation.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">動畫片</p></a>
                            <a href="car.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                            <a href="about.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                            <a href="logout.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登出</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>

        <section>
            <div class="back_section">
                <h1>【後台管理系統】</h1>
                <div class="back_title">
                    <div class="back_add">
                        <h3><a href="shopping_new.jsp">#新增商品</a></h3>
                        <input type="text" class="back_text">
                        <button type="button" class="back_button">新增</button>
                    </div>
                    <div class="back_add">
                        <h3><a href="shopping_delete.jsp">#刪除商品</a></h3>
                        <input type="text" class="back_text">
                        <button type="button" class="back_button">刪除</button>
                    </div>
                    <div class="back_add">
                        <h3><a href="shopping_check.jsp">#修改商品</a></h3>
                        <input type="text" class="back_text">
                        <button type="button" class="back_button">修改</button>
                    </div>
                </div>
                <h1>【會員訂單管理】</h1>
                <div class="back_title2">
                    <table class="title2_title">
                        <tr>
                            <th>訂單編號</th>
                            <th>訂購人</th>
                            <th>備註</th>
                            <th>付款方式</th>
                            <th>地址</th>
                        </tr>
                <% 
                sql="select*from `ordersdetail`";
                ResultSet rs =con.createStatement().executeQuery(sql);
                while(rs.next()){
                %>
                    <tr>
                            <td><%=rs.getString("order_id")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("other")%></td>
                            <td><%=rs.getString("pay")%></td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
               <%}%>        
                        
                    </table>
                </div>
                <!--<h1>【會員資料管理】</h1>
                <div class="back_title3">
                    <table class="title2_title">
                        <tr>
                            <th>會員名稱</th>
                            <th>電話</th>
                            <th>地址</th>
                            <th>email</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>小黑</td>
                            <td>0912345678</td>
                            <td>桃園市新中北路200號</td>
                            <td>xxxx@gmail.com</td>
                            <td><button>刪除</button></td>
                        </tr>
                    </table>
                </div>
            </div>-->
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
    </div>
    <script src="assets/js/index.js" >
    </script>       
</body>
</html>