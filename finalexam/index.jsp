<%@page contentType="text/html" pageEncoding="utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>電影宅急便</title>

    <style>
        @import url(assets/css/index.css);
    </style>
</head>

<body>
<% if(session.getAttribute("id") != null)
{%>
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
        <%}
        else
        {%>
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
                            <a href="login.jsp"><span id="h_nav2_text2" style="background: none;border: none;"><img src="assets/img/user.png" class="h_nav2_icon">登入/註冊</span></a>   
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
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登入/註冊</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>
        <%}%>
        <section>
            <div id="section1">
                <div id="section1_img">
                    <img src="assets/img/arrow-l.png" class="s_img_icon1" id="minus" onclick="minus()">
                    <img src="assets//img/indeximg1.png" id="s_img">
                    <img src="assets/img/arrow-r.png" class="s_img_icon2" id="add" onclick="add()">
                </div>
            </div>
            <div class="section2">
                <div class="recommend">
                    <div class="rec_text">
                        <p class="rec_texts">🌟本日推薦</p>
                    </div>
                    <div class="rec_img">
                        <img src="assets/img/baby.png" style="height:100%;width:100%;">
                    </div>
                </div>
                <div class="new_movie">
                    <div class="rec_text2">
                        <p class="rec_texts">🌟即將上映</p>
                    </div>
                    <div class="new_movie1">
                        <div class="new_img">
                            <img src="assets/img/bridsofprey.png" style="height:100%;width:100%;">
                        </div>
                        <div class="new_img">
                            <img src="assets/img/doctorstrange.png" style="height:100%;width:100%;">
                        </div>
                        <div class="new_img">
                            <img src="assets/img/powerwomen.png" style="height:100%;width:100%;">
                        </div>
                    </div>
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
                        <h3>瀏覽人數:<%@include file="counter.jsp"%></h3>
                    </div> 
                </div>
            </div>
        </footer>
    </div>
    <script src="assets/js/index.js" >
    </script>       
</body>
</html>