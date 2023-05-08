<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增商品</title>
    <style>
        @import url(assets/css/index.css);
        @import url(assets/css/back.css);
    </style>
</head>
<body>
    
        <section>
            <div class="back_section">
                <h1>【新增商品】</h1>
            </div>
        </section>
        <form method="post" action="s_new copy.jsp" style="color:white;" >
            <h3 style='text-align: center;'>
            產品名稱<input class="h_n1_text_search" name="name" id="textbox" type="text" > <br> 
            產品價格<input class="h_n1_text_search" name="price" id="textbox" type="text"> <br> 
            產品類型<input class="h_n1_text_search" name="type" id="textbox" type="text"> <br>
            產品圖片<input class="h_n1_text_search" name="pic" id="textbox" type="text"> <br> 
            產品數量<input class="h_n1_text_search" name="stock" id="textbox" type="text"> <br> 
            產品導演<input class="h_n1_text_search" name="director" id="textbox" type="text"> <br> 
            產品演員<input class="h_n1_text_search" name="actor" id="textbox" type="text"> <br> 
            產品時長<input class="h_n1_text_search" name="time" id="textbox" type="text"> <br> 
            產品級別<input class="h_n1_text_search" name="grade" id="textbox" type="text"> <br> 
            產品特點<input class="h_n1_text_search" name="point1" id="textbox" type="text"> <br> 
            產品特點<input class="h_n1_text_search" name="point2" id="textbox" type="text"> <br> 
            產品特點<input class="h_n1_text_search" name="point3" id="textbox" type="text"> <br> 
            產品介紹<input class="h_n1_text_search" name="introduce" id="textbox" type="text"> <br>
            產品影片<input class="h_n1_text_search" name="iframe" id="textbox" type="text"> <br> 
            
            
            <input type="submit" value="新增" >
        </h3>
        </form>

        
</body>
</html>           