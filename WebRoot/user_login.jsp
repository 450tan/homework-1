<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    
    <title>读者登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
     <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>
<body class="login_bj">

	<div class="zhuce_body">
		<div class="logo">
			<a href="#"><img src="images/logo.png" width="114" height="54" border="0">
			</a>
		</div>
		<div class="zhuce_kong login_kuang">
			<div class="zc">
				<div class="bj_bai">
					<h3>读者登录</h3>
					<div>
					 <s:form action="user/user_login" method="post">
						<s:textfield name="user.username" placeholder="账号" cssClass="kuang_txt"></s:textfield>
						<s:password name="user.password" placeholder="密码" cssClass="kuang_txt"></s:password>     
						<s:submit value="登录" cssClass="btn_zhuce"></s:submit>
					</s:form>
						</div>
						<div><a href="#">忘记密码？</a><input name="" type="checkbox" value="" checked="checked"><span>记住我</span></div> 
				</div>
				<div class="bj_right">
					<p>使用以下账号直接登录</p>
					<a href="#" class="zhuce_qq">QQ登录</a> <a href="#" class="zhuce_wb">微博登录</a>
					<a href="#" class="zhuce_wx">微信登录</a>
					<p>
						没有账号？<a href="user_reg.jsp">立即注册</a>
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>