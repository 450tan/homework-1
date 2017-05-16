<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete_message.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="100;url= write/write_showWrite?author.authorname=${author.authorname}">
	 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
  </head>
 
  <body>
         以前陪我看月亮的时候，叫人家小甜甜，现在新文胜旧文了，就要删除人家了T^T？
     <a href="book/book_deleteBook?book.bookid=${book.bookid}" onclick="return confirm('确认删除？');">删除</a>  
       <!-- 加一个确认删除的ifTag 确认删除？-->  
  </body>
</html>
