<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("id")==null){
    out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
}
else{
    String id=(String) session.getAttribute("id");
    sql="select * from `cart`, `perflim` where id='" + id + "' AND cart.product_id = perflim.product_id";
    ResultSet rs=con.createStatement().executeQuery(sql);
    while(rs.next()){
        int quantity=Integer.parseInt(rs.getString("quantity"));
        int stock=Integer.parseInt(rs.getString("stock"));
        if(quantity>stock){
            out.print("<script>alert('庫存不足！');window.location='good-1.jsp'</script>");
            return;
        }
    }

    String user_id=(String) session.getAttribute("id"); 
    String other=request.getParameter("other");
    String name=new String(request.getParameter("name"));
    String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
    String pay=request.getParameter("pay");
    
    if(name==""||address==""||pay==""){
        out.print("<script>alert('訂單建立失敗,欄位不得為空，返回結帳頁面');window.location='checkout.jsp'</script>");
    }
    else{
        
        sql="insert `ordersdetail`(user_id,name,address,pay,other) values('"+user_id+"','"+name+"','"+address+"','"+pay+"','"+other+"')";
        con.createStatement().execute(sql);
        out.print("<script>alert('訂單提交！');window.location='index.jsp'</script>");
        sql="select*from`cart` where id='"+user_id+"'";
        ResultSet rs1=con.createStatement().executeQuery(sql);
        while(rs1.next()){
            sql = "insert `orders` (product_id,quantity,user_id) values('"+rs1.getString("product_id")+"','"+rs1.getString("quantity")+"','"+user_id+"')";
            con.createStatement().execute(sql);
        }
        sql="select * from `cart`, `perflim` where id='" + id + "' AND cart.product_id = perflim.product_id";
        rs=con.createStatement().executeQuery(sql);
        while(rs.next()){
            String product_id = rs.getString("product_id");
            int buy=Integer.parseInt(rs.getString("quantity"));
            int stock=Integer.parseInt(rs.getString("stock"));
            int newstock=(stock-buy);
            sql="UPDATE `perflim` SET stock='"+newstock+"'where product_id='"+product_id+"'";
            con.createStatement().execute(sql);
        }
        sql="delete from `cart` where id='"+id+"'";
        con.createStatement().execute(sql);
    }
}
%>