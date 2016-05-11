<%@page import="java.util.Map.Entry"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
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
   	<h1>购物车</h1>
   	<table border="1">
   		<tr>
			<th>商品名称</th>
			<th>商品数量</th>
   		</tr>
   		<%
   			Map<String,Integer> cart = (Map<String,Integer>)session.getAttribute("map");
   			if(cart!=null && cart.size()>0){
   				for(Entry<String,Integer> en : cart.entrySet()){
   				%>
   				<tr>
					<td><%=en.getKey() %></td>
					<td><%=en.getValue() %></td>
		   		</tr>
   				<% }
   			}
   		 %>
   	</table>
  </body>
</html>
