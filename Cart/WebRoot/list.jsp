<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   	<h1>商品列表</h1>
   	<table border="1" >
   		<tr>
   			<td>
   				<img src="/Cart/img/pic (1).jpg" width="300" height="300" /><br>
	   			肥皂<br>
	   			<a href="/Cart/CartServlet?name=0"  >点击加入购物车</a>
   			</td>
   			<td>
   				<img src="/Cart/img/pic (2).jpg" width="300" height="300" /><br>
	   			蜡烛<br>
	   			<a href="/Cart/CartServlet?name=1" >点击加入购物车</a>
   			</td>
   		</tr>
   		<tr>
   			<td>
   				<img src="/Cart/img/pic (3).jpg" width="300" height="300" /><br>
	   			被罩<br>
	   			<a href="/Cart/CartServlet?name=2" >点击加入购物车</a>
   			</td>
   			<td>
   				<img src="/Cart/img/pic (4).jpg"  width="300" height="300" /><br>
	   			枕头<br>
	   			<a href="/Cart/CartServlet?name=3" >点击加入购物车</a>
   			</td>
   		</tr>
   	</table>
   		<a href="/Cart/cart.jsp" >查看购物车</a>
  </body>
</html>
