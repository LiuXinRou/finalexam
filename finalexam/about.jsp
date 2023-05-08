<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>電影宅急便</title>

    <style>
        @import url(assets/css/index.css);
        @import url(assets/css/about.css);
    </style>
</head>
<body>
<%
if(session.getAttribute("id")!=null){%>
    <div id="main">
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
                        <a href="login.jsp"><span id="h_nav2_text2" style="background: none;border: none;"><img src="assets/img/user.png" class="h_nav2_icon">登出</span></a>   
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
                        <a href="index.jsp"><p id="h_n_text_2"><img src="assetsimg/home.png" class="h_nav2_icon">首頁</p></a>
                        <a href="member.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                        <a href="Hotmovie.jsp"><p id="h_n_text_2" style="margin-top:30px;"><img src="img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                        <a href="product.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</p></a>
                        <a href="plot.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">劇情片</p></a>
                        <a href="fantasy.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                        <a href="animation.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">動畫片</p></a>
                        <a href="car.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                        <a href="about.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                        <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登出</p></a>                     
                    </div>
                </div>
            </div>
        </div>
        <div style="height:85px"></div>
    </header>
<%}
else{%>
<div id="main">
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
                        <a href="login.jsp"><span id="h_nav2_text2" style="background: none;border: none;"><img src="assets/img/user.png" class="h_nav2_icon">登入</span></a>   
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
                        <a href="index.jsp"><p id="h_n_text_2"><img src="assetsimg/home.png" class="h_nav2_icon">首頁</p></a>
                        <a href="member.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                        <a href="Hotmovie.jsp"><p id="h_n_text_2" style="margin-top:30px;"><img src="img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                        <a href="product.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">所有電影</p></a>
                        <a href="plot.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">劇情片</p></a>
                        <a href="fantasy.jsp"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">奇幻片</p></a>
                        <a href="animation.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">動畫片</p></a>
                        <a href="car.html"><p id="h_n_text_2"><img src="assets/img/film.png" class="h_nav2_icon">我的片單</p></a>
                        <a href="about.jsp"><p id="h_n_text_2"><img src="assets/img/user.png" class="h_nav2_icon">關於我們</p></a>
                        <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登入</p></a>                     
                    </div>
                </div>
            </div>
        </div>
        <div style="height:85px"></div>
    </header>
<%}%>
    
        <section>
        <div class="about_root">
            <!--about1-->
            <div class="about">
                <div class="about_i">
                    <img src="assets/img/chao.jpg" class="about_i_img">
                </div>
            
                <div class="about_text">
                    <h3 class="about_text_text">10944141</h3>
                    <h3 class="about_text_text">趙子嘉</h3>
                    <h3 class="about_text_text">網頁後端</h3>
                    <a href="https://instagram.com/chao__01?igshid=YmMyMTA2M2Y=" target="_blank"><img src="assets/img/ig1.png"></a>
                    <a href="https://instagram.com/chao__01?igshid=YmMyMTA2M2Y=" target="_blank"><img src="assets/img/fb1.png"></a>
                    <a href="https://instagram.com/chao__01?igshid=YmMyMTA2M2Y=" target="_blank"><img src="assets/img/gmail.png"></a>
                    <p class="about_text1">
                        後端的程式碼看起來好亂，自己把自己絆倒好多次了⋯⋯，但有這次小組經驗其實很開心，謝謝每個組員的努力！
                    </p>
                </div>  
            </div>

            <!--about2-->
            <div class="about">
                <div class="about_i">
                    <img src="assets/img/melinda.jpg" class="about_i_img">
                </div>
            
                <div class="about_text">
                    <h3 class="about_text_text">10944136</h3>
                    <h3 class="about_text_text">劉心柔</h3>
                    <h3 class="about_text_text">網頁後端</h3>
                    <a href="https://www.instagram.com/melinda_0906/" target="_blank"><img src="assets/img/ig1.png"></a>
                    <a href="https://www.instagram.com/melinda_0906/" target="_blank"><img src="assets/img/fb1.png"></a>
                    <a href="https://www.instagram.com/melinda_0906/" target="_blank"><img src="assets/img/gmail.png"></a>
                    <p class="about_text1">
                        網程真的好難，每天看程式碼都快吐了，但還是很開心寫完之後的那種感覺。大家都好棒
                    </p>
                </div> 

            </div>
            

            <!--about3-->
            <div class="about">
                <div class="about_i">
                    <img src="assets/img/hao.jpg" class="about_i_img">
                </div>
            
                <div class="about_text">
                    <h3 class="about_text_text">10944240</h3>
                    <h3 class="about_text_text">鄭全浩</h3>
                    <h3 class="about_text_text">網頁前端</h3>
                    <a href="https://www.instagram.com/hao__0303/" target="_blank"><img src="assets/img/ig1.png"></a>
                    <a href="https://www.instagram.com/hao__0303/" target="_blank"><img src="assets/img/fb1.png"></a>
                    <a href="https://www.instagram.com/hao__0303/" target="_blank"><img src="assets/img/gmail.png"></a>
                    <p class="about_text1">
                        經過這次的多媒體課程後發現看起來很漂亮的網站動畫很多，背後的程式碼其實是非常多的，想要寫出漂亮美觀的網頁不是一件很容易的事，但經過這堂課後增加了我們寫網頁的概念
                    </p>
                </div>

            </div>


            <!--about4-->
            <div class="about">

                <div class="about_i">
                    <img src="assets/img/jie.jpg" class="about_i_img">
                </div>
            
                <div class="about_text">
                    <h3 class="about_text_text">10941234</h3>
                    <h3 class="about_text_text">黃文頡</h3>
                    <h3 class="about_text_text">網頁前端</h3>
                    <a href="https://www.instagram.com/huang_10_18/" target="_blank"><img src="assets/img/ig1.png"></a>
                    <a href="https://www.instagram.com/huang_10_18/" target="_blank"><img src="assets/img/fb1.png"></a>
                    <a href="https://www.instagram.com/huang_10_18/" target="_blank"><img src="assets/img/gmail.png"></a>
                    <p class="about_text1">
                        雖然期中已經對於排版稍微有概念，但剛開始做的時候還是花了一些時間研究如何排版比較好。專題做到後面也有越做越順，只不過js的部分還是覺得有點難。
                    </p>
                </div>

            </div>
        </div>
        <form method="post" action="comment.jsp">
            <div class="about_board">
                <div class="about_board_title">
                    <h1>聯絡我們</h1>
                </div>
                <div class="about_board_text">
                    <div class="about_board_text1">
                        <h3>電影名稱 : </h3>
                        <input type="text" name="fname" placeholder="xxxxxxx">
                    </div>
                    <div class="about_board_text1">
                        <h3>會員名稱 : </h3>
                        <input type="text" name="mname" placeholder="王小民">
                    </div>
                    
                    
                </div> 
                <div class="rating">
                    <input type="radio" name="rating" id="r1" value="1" checked>
                    <label for="r1"></label>
                   
                    <input type="radio" name="rating" id="r2" value="2">
                    <label for="r2"></label>
                   
                    <input type="radio" name="rating" id="r3" value="3">
                    <label for="r3"></label>
                   
                    <input type="radio" name="rating" id="r4" value="4">
                    <label for="r4"></label>
                   
                    <input type="radio" name="rating" id="r5" value="5">
                    <label for="r5"></label>
                </div> 
                <div class="about_board_text2">
                    <h3>留言區 : </h3>
                    <textarea placeholder="請輸入文字..." name="content" class="about_board_text3"></textarea>
                </div>
                <div class="about_board_button">
                    <input type="submit" value="送出"> </p>                    
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
                        
                    </div> 
                </div>
            </div>
        </footer>
    </div>
    <script src="assets/js/index.js" ></script> 
       

    </body>
</html>