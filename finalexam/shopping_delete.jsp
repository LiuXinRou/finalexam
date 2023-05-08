<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>刪除商品</title>
    <style>
        @import url(assets/css/index.css);
        @import url(assets/css/back.css);
    </style>
</head>
<body>
    
        <section>
            <div class="back_section">
                <h1>【刪除商品】</h1>
            </div>
        </section>

        <form method="post" action="s_de.jsp" style="color:white;" >
            <h3 style='text-align: center;'>
            產品名稱<input class="h_n1_text_search" name="name" id="textbox" type="text" > <br> 
            
            
            <input type="submit" value="送出"> </p></h3>
        </form>

        
</body>
</html>           