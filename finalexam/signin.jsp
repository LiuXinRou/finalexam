<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				
				String sql="use finalexam_login";
				con.createStatement().execute(sql);
				String id=request.getParameter("id");
				String email=request.getParameter("email");
				String pwd=request.getParameter("pwd");
                String phone=request.getParameter("phone");
                String address=request.getParameter("address");
				
				if(id==""||email==""||pwd==""||phone==""||address==""){
					out.print("<script>alert('註冊失敗，各欄位不得為空，返回註冊');window.location='signup.jsp'</script>");
				}
				else{	
				try{
				 sql = "insert `signin`(id , email, pwd, phone, address) values('"+id+"','"+email+"','"+pwd+"','"+phone+"','"+address+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，返回登入');window.location='login.jsp'</script>");
				
				}
				catch(SQLException sExec){
					
					out.print("<script>alert('註冊失敗，該帳號存在或有其他問題，返回註冊');window.location='signup.jsp'</script>");
				}
				}
				
				
		}
		
		
		
		catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>