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
        @import url(css/index.css);
        @import url(css/login.css);
    </style>
</head>

<body>
    <div id="main">
        <header>
            <div id="header">
                <div id="logo">
                    <img src="img/box.png" style="height:40px;weight:40px;margin-right:10px;margin-top: 10px;">
                    <h1><a href="index.jsp" style="color:white;">電影宅急便</a></h1>
                        <div id="header_nav2">
                            <a href="index.jsp"><div id="h_nav2_text"><img src="img/home.png" class="h_nav2_icon">首頁</div></a>
                            <div id="h_nav2_text3">|</div>
                            <a href="Hotmovie.jsp"><div id="h_nav2_text2"><img src="img/fire.png" class="h_nav2_icon">近期熱門</div></a>
                            <a href="product.jsp"><div id="h_nav2_text2"><img src="img/film.png" class="h_nav2_icon">所有電影</div></a>
                            <a href="car.jsp"><div id="h_nav2_text2"><img src="img/film.png" class="h_nav2_icon">我的片單</div></a>
                            <a href="login.jsp"><span id="h_nav2_text2" style="background: none;border: none;"><img src="img/user.png" class="h_nav2_icon">登入/註冊</span></a>   
                        </div>
                        <div id="h_nav1_img" onclick="show()">
                            <button id="button" style="background: none;border: none;"><img src="img/list.png" class="h_nav1_icon"></button>
                        </div>
                    <div id="header_nav1">
                        <div id="h_nav1_text1">
                            <a href="javascript:void(0)" id="h_n_text_1" onclick="show()">電影宅急便</a><hr>
                        </div>
                        <div id="h_nav1_text">
                            <input class="h_n1_text_search" id="textbox" type="search" placeholder="搜索您想要的商品">
                            <a href="index.jsp"><p id="h_n_text_2"><img src="img/home.png" class="h_nav2_icon">首頁</p></a>
                            <a href="member.jsp"><p id="h_n_text_2"><img src="img/user.png" class="h_nav2_icon">會員中心</p></a><hr>
                            <a href="Hotmovie.jsp"><p id="h_n_text_2" style="margin-top:30px;"><img src="img/fire.png" class="h_nav2_icon">近期熱門</p></a>
                            <a href="product.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">所有電影</p></a>
                            <a href="plot.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">劇情片</p></a>
                            <a href="fantasy.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">奇幻片</p></a>
                            <a href="animation.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">動畫片</p></a>
                            <a href="car.jsp"><p id="h_n_text_2"><img src="img/film.png" class="h_nav2_icon">我的片單</p></a>
                            <a href="about.jsp"><p id="h_n_text_2"><img src="img/user.png" class="h_nav2_icon">關於我們</p></a>
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="img/user.png" class="h_nav2_icon">登入</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>
        <section>    
                <div class="login">
                    <!--titke-->
                    <div class="login_text">
                        Login
                    </div>
<%
if(session.getAttribute("id")!=null){
    sql="SELECT * FROM `signin` WHERE `id`='"+session.getAttribute("id")+"';";
    ResultSet rs=con.createStatement().executeQuery(sql);
    String id="",pwd="";
    while(rs.next()){
        id=rs.getString("id");
        pwd=rs.getString("pwd");  
    }
    con.close();
%>
<%
}
else{
    con.close();
%>
<h1><font color="red">login please</font></h1>
<form action="check.jsp" method="post">
帳號:<input type="text" name="id"/><br/>
密碼:<input type="text" name="pwd"/><br/>
<input type="submit" name="b1" value="登入"/>
</form>
<%
}
%>