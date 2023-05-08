<%@page contentType="text/html" pageEncoding="utf-8" language="java" import="java.sql.*"%>


<head>
<title>signup1</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 
        String url1="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con1=DriverManager.getConnection(url1,"root","1234");
        if(con1.isClosed())
           out.println("連線建立失敗");
        else
        {
//Step 3: 選擇資料庫	        
			String sql1="USE `finalexam_login`";
			con1.createStatement().execute(sql1);

			sql1 = "SELECT * FROM counter";
			ResultSet rs1 = con1.createStatement().executeQuery(sql1);
			if(rs1.next())
			{
			   String countS = rs1.getString(1);
			   Integer count = Integer.parseInt(countS);
			   if(session.isNew())
			   {
				   count=count+1;
				   countS = String.valueOf(count);
				   sql1="UPDATE counter SET `count` ='" + countS+"'";
				   con1.createStatement().execute(sql1);
			   }
			  out.println(count); 
		   }
		   
        }
//Step 6: 關閉連線
        con1.close();
    }
    catch (SQLException sExec) {
        out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>
</body>