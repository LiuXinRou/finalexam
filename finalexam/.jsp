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
        @import url(assets/css/good.css);
    </style>
</head>


<body>
    <div id="main">
        <header>
            <div id="header">
                <div id="logo">
                    <img src="assets/img/box.png" style="height:40px;weight:40px;margin-right:10px;margin-top: 10px;">
                    <h1><a href="index.html" style="color:white;">電影宅急便</a></h1>
                        <div id="header_nav2">
                            <a href="index.jsp"><div id="h_nav2_text"><img src="assets/img/home.png" class="h_nav2_icon">首頁</div></a>
                            <div id="h_nav2_text3">|</div>
                            <a href="Hotmovie.html"><div id="h_nav2_text2"><img src="assets/img/fire.png" class="h_nav2_icon">近期熱門</div></a>
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
                            <input class="h_n1_text_search" id="textbox" type="search" placeholder="搜索您想要的商品">
                            <a href="index.html"><p id="h_n_text_2"><img src="assets/img/home.png" class="h_nav2_icon">首頁</p></a>
                            <a href="member.html"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                            <a href="Hotmovie.html"><p id="h_n_text_2" style="margin-top:30px;"><img src="assets/img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                            <a href="product.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</p></a>
                            <a href="plot.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">劇情片</p></a>
                            <a href="fantasy.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                            <a href="animation.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">動畫片</p></a>
                            <a href="car.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                            <a href="about.html"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登入</p></a>                   
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>
        <section>
                <div class="good_section">
                    <div class="good">
                    <%
                        String pid=request.getParameter("pid");
                        sql="SELECT * FROM `perflim` WHERE `product_id`='"+pid+"'";
                        ResultSet rs=con.createStatement().executeQuery(sql);
                        rs.next();
                        
                    %>

                        <div class="good_img">
                            <img src="<%= rs.getString(6) %>" style="height:100%;width:100%;">
                        </div>
                        <div class="good_text1">
                            <div class="good_title">
                                <h1 class="good_title1" name="id">🎞 <%= rs.getString(1) %></h1>
                            </div>
                            <table class="introduce1">
                                <tr>
                                    <td class="i_title">導 演 : </td>
                                    <td class="i_title1"><%= rs.getString(8) %></td>
                                </tr>
                                <tr>
                                    <td class="i_title">演 員 : </td>
                                    <td class="i_title1"><%= rs.getString(9) %></td>
                                </tr>
                                <tr>
                                    <td class="i_title">類 型 : </td>
                                    <td class="i_title1"><%= rs.getString(4) %></td>
                                </tr>
                                <tr>
                                    <td class="i_title">片 長 : </td>
                                    <td class="i_title1"><%= rs.getString(10) %></td>
                                </tr>
                                <tr>
                                    <td class="i_title">級 數 : </td>
                                    <td class="i_title1"><%= rs.getString(11) %></td>
                                </tr>
                            </table>
                            <form method="get" action="addcar.jsp">
                                <div class="good_button">
                                    <input type="button" class="num-button" id="btnone"  name="plus" value="-" onclick="minusNUM(0)">
                                    <input type="text" id="num" class="number" name="quantity" min="1" max="<%=Integer.parseInt(rs.getString(7))%>">
                                    <input type="button" class="num-button" id="btntwo"  name="minus" value="+" onclick="addNUM(0)">
                                    <span class="button_text">(天)</span>
                                </div>
                                <div class="stock">
                                    庫存:<%= rs.getString(7) %>
                                </div>
                            
                               <div class="car">
                                    <input type="hidden" name="pid" value="<%= rs.getString(2) %>">
                                   <input type="submit" class="car_button" value="加入購物車">
                                   <input type="submit" class="car_button" value="直接購買">
                                </div>
                            </form>
                            
                        </div>
                        <div class="introduce2">
                            <table class="introduce2_text1">
                                <tr>
                                    <td>★</td>
                                    <td><%= rs.getString(12) %></td>
                                </tr>
                                <tr>
                                    <td>★</td>
                                    <td><%= rs.getString(13) %></td>
                                </tr>
                                <tr>
                                    <td>★</td>
                                    <td><%= rs.getString(14) %></td>
                                </tr>
                                
                            </table>
                            <div class="introduce2_text2">
                                <div class="introduce_text2_title">
                                    電影簡介:
                                </div>
                                <div class="introduce_text2_article"><%= rs.getString(15) %></div>
                            </div>
                        </div>
                    </div>
                    <div class="video">
                        <div class="video_title">
                            <h2>精彩預告搶先看</h2>
                        </div>
                        <div class="youtube">
                            <iframe width="1253" height="705" src="<%= rs.getString(16) %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="comment">
                        <div class="comment_title">
                           <h2>電影評論</h2>
                        </div>
                        <div class="comment_text">
                            <div class="comment_text_img">
                                <img src="assets/img/user.png" style="width:60px;height:60px;display: block;margin: auto;">
                                <p style="text-align: center;color:white;margin-top:10px">王小明</p>
                            </div>
                            <div class="comment_text1">
                                <p>
                                    整體來說，在劇情上可能並不如想像中的震撼人心，但我覺得電影在音樂上是很不錯的饗宴，透過畫面的鋪陳，能夠讓歌曲在我們的腦海產生畫面的記憶，看完電影後再聽到這些歌曲會讓人感到更加的喜歡。 整部電影之中最令我回味的就是他穿在各個劇情段落之間的歌曲，直到現在我還是會到Youtube去聽電影中的歌曲
                                </p>
                            </div>
                        </div>
                        <div class="comment_text">
                            <div class="comment_text_img">
                                <img src="assets/img/user.png" style="width:60px;height:60px;display: block;margin: auto;">
                                <p style="text-align: center;color:white;margin-top:10px">小黑</p>
                            </div>
                            <div class="comment_text1">
                                <p>
                                    也或許正因為明白了無奈與無常是人生百態，所以，即便再怎麼難受，我們仍會在受過傷害後去選擇接受或療傷。
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
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
                        <h6>訪客人數:10000</h6>
                    </div> 
                </div>
            </div>
        </footer>
    </div>
    <script src="assets/js/index.js" >
    </script>       
</body>
</html>