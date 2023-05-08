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
                            <a href="login.jsp"><p id="h_n_text_2" style="margin-top:40%;"><img src="assets/img/user.png" class="h_nav2_icon">登入</p></a>                     
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:85px"></div>
        </header>
        <%}%>

      
        <%
            
            String pid=request.getParameter("pid");
            
            sql="select*from `perflim` where product_id='"+pid+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            while(rs.next())
    {%>
        <section>
                <div class="good_section">
                    <div class="good">
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
                                <input type="button" class="num-button" id="btnone" value="-" onclick="minusNUM(0)">
                                <input type="text" id="num" class="number" name="quantity" value="1" min=1 max="<%=rs.getString(7)%>">
                                <input type="button" class="num-button" id="btntwo" value="+" onclick="addNUM(0)">
                                <span class="button_text">(天)</span>
                            </div>
                                <div class="stock">
                                    庫存:<%=rs.getString(7) %>
                                </div> 
                               <div class="car">
                                    <input type="hidden" name="pid" value="<%=rs.getString(2) %>">
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
                        <%
                            try {
                            //Step 1: 載入資料庫驅動程式 
                                Class.forName("com.mysql.jdbc.Driver");
                                try {
                            //Step 2: 建立連線 	
                                    String url3="jdbc:mysql://localhost/?serverTimezone=UTC";
                                    String sql3="";
                                    Connection con3=DriverManager.getConnection(url3,"root","1234");
                                    if(con3.isClosed())
                                    out.println("連線建立失敗");
                                    else {
                            //Step 3: 選擇資料庫   
                                    sql3="USE `finalexam_login`";
                                    con3.createStatement().execute(sql3);
                            //Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
                                    sql3="SELECT * FROM `content` where `flim_name`= '"+(rs.getString(1))+"'"; //算出共幾筆留言
                                    ResultSet rs3=con3.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql3);
                                    //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀
                                    //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
                                    rs3.last();
                                    int total_content=rs3.getRow();
                                    out.println("共"+total_content+"筆留言<p>");
                                    
                                    //每頁顯示5筆, 算出共幾頁
                                    int page_num=(int)Math.ceil((double)total_content/2.0); //無條件進位
                                    out.println("請選擇頁數");
                                    //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
                                    for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
                                        out.print("<a href='good-1.jsp?pid="+pid+"&page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

                                    out.println("<p>");

                                    //讀取page變數
                                    String page_string = request.getParameter("page");
                                    if (page_string == null) 
                                        page_string = "0";          
                                    int current_page=Integer.valueOf(page_string);
                                    if(current_page==0) //若未指定page, 令current_page為1
                                        current_page=1;
                                    //計算開始記錄位置   
                            //Step 5: 顯示結果 
                                    int start_record=(current_page-1)*2;
                                    //遞減排序, 讓最新的資料排在最前面
                                    sql3="SELECT * FROM `content` where `flim_name`= '"+(rs.getString(1))+"' ORDER BY `id` DESC LIMIT ";
                                    sql3+=start_record+",2";

                            // current_page... SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT
                            //      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 0, 5
                            //      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 5, 5
                            //      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 10, 5
                                    rs3=con3.createStatement().executeQuery(sql3);
                            //  逐筆顯示, 直到沒有資料(最多還是5筆)
                                    while(rs3.next())
                                            {%>
                                                <div class="comment_text">
                                                    <div class="comment_text_img">
                                                        <img src="assets/img/user.png" style="width:60px;height:60px;display: block;margin: auto;">
                                                        <p style="text-align: center;color:white;margin-top:10px"><%=(rs3.getString(2))%></p>
                                                    </div>
                                                    <div class="comment_text1">
                                                        <p>
                                                            留言內容:<%=(rs3.getString(3))%> <br>
                                                            留言時間:<%=(rs3.getString(4))%> <br>
                                                            評分:<%=(rs3.getString(6))%> 星<br>
                                                            <br>        
                                                        </p>
                                                    </div>
                                                </div>                                             
                                            <%}
                            //Step 6: 關閉連線
                                    con3.close();
                                
                                }}
                                catch (SQLException sExec) {
                                    out.println("SQL錯誤"+sExec.toString());
                                    
                                }
                            }
                            catch (ClassNotFoundException err) {
                                out.println("class錯誤"+err.toString());
                            }
                            %>
                        
                       
                    </div>
                </div>
            </form>
        </section>	

        <%}	
    
	
        //Step 6: 關閉連線
                  con.close();
             
        %>

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