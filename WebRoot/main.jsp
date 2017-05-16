<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>漫读网,宁静淡泊的阅读世界~~搜索页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/master.css" type="text/css" rel="stylesheet" />
<link href="css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
	
  </head>
  <body>
    <header>
       <!--头部-->
	<div class="head">
		<div class="block yh f13">
			<p class="tright">
				<c:choose>
					<c:when test="${author.authorname == null}">
						<a href="author_reg.jsp" cssClass="pl10 pr10">author注册</a>|
		                <a href="author_login.jsp" cssClass="pl10 pr10">author登录</a>
					</c:when>
					<c:otherwise>
						<c:out value="${author.authorname}"></c:out>作者, 欢迎您! 
		                <a href="write/write_showWrite?author.authorname=${author.authorname}">-->作者空间</a>|
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${user.username == null}">
						<a href="user_reg.jsp"  class="pl10 pr10">user注册</a>|
						<a href="user_login.jsp"  class="pl10 pr10">user登录</a>
					</c:when>
					<c:otherwise>|
						<c:out value="${user.username}"></c:out>读者, 欢迎您! 
		               <a href="order/order_showOrder?user.username=${user.username}">用户中心</a>
					</c:otherwise>
				</c:choose>
			</p>
			<div class="box position_a clearfix">
				<!--导航-->
				<div class="nav fleft ofHidden">
					<ul>
						<li><a href="">首页</a>
						</li>
						<li><a href="qcxy.html">青春校园</a>
						</li>
						<li><a href="dssh.html">都市生活</a>
						</li>
						<li><a href="gdwx.html">古代文学</a>
						</li>
						<li><a href="cyyq.html">穿越言情</a>
						</li>
						<li><a href="kbly.htmll">恐怖灵异</a>
						</li>
						<li><a href="wlyc.html">网络原创</a>
						</li>
						<li><a href="qhxh.html">玄幻奇幻</a>
						</li>
					</ul>
				</div>
				<!--搜索-->
				<s:form name="searchform" method="post"
					action="book/book_queryAllBook" cssClass="ss ofHidden">
					<input name='ecmsfrom' type='hidden' value='9'>
					<input type="hidden" name="show" value="title,newstext">
					<input class="index_srh" name="keyWords" placeholder="请输入关键字">
					<input class="search" type="submit" name="submit" value="搜索">
				</s:form>
			</div>
		</div>
	</div>
	<!--幻灯片-->
<div class="fullSlide">
		<div class="bd">
			<ul>
			<li style="background:url(images/banner5.jpg) #FFF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
			<li style="background:url(images/banner2.jpg) #FFF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
			<li style="background:url(images/banner3.jpg) #FFF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
			<li style="background:url(images/banner4.jpg) #FFF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
			<li style="background:url(images/banner1.jpg) #FFF center 0 no-repeat;"><a target="_blank" href="#"></a></li>
			</ul>
		</div>

		<div class="hd"><ul></ul></div>
	</div>  
    </header>
    <main>
    <!--首页主体-->
    <!--文字列表页主体-->
    <s:form action="book/book_queryAllBook" method="post">
<div class="block">
        	<div class="navmenu"><span>您现在的位置: <a href="#">漫说网</a> > 小说书目</span>言情小说</div>
        	   <div class="text-list yh">
				<ul>
				<s:iterator value="bookList" status="status">
					<li class="clearfix">
						<div class="fleft"><img src="<%=basePath%><s:property value='picture'/>" width="400" height="150"></div>
						<div class="fright">
							<p class="bt"><a href="book/book_showDetail?book.bookid=<s:property value='bookid'/>"><s:property value="bookname" /></a></p>
							<p class="jj">作家：<s:property value="author"/><br><s:property value="bookwenan"/></p>
                            <p class="ck"><span class="eye"><s:property value="unitprice"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="time">2014-10-14</span>
                           <a href="order/order_addOrder?book.bookid=${book.bookid}&user.username=${user.username}&order.orderid=${order.orderid}">
	                                加入书架</a> </p>
						</div>
					</li>
	    </s:iterator>
	    </ul>
	    </div>
	    </div>
	    </div>
	    </s:form>
	</main>
	<div class="foot clearfix">
	<div class="block">
        <div class="fleft">
            <p><a href="" class="a1">联系我们</a>|<a href="" class="a2">公司诚聘</a>|<a href="" class="a3">合作伙伴</a>|<a href="" class="a4">网站地图</a></p>
            <p>Copyright © 2014-2015 www.haiis.com,All Rights Reserved 来源:<a href="http://www.mycodes.net/" target="_blank">Team8</a></p>
            <p>版权所有  漫读网</p>
        </div>
        
        <div class="fright">
        	<p class="p1">电话热线：0517-85158777</p>
            <p class="p2">邮箱：2079491718@qq.com</p>
        </div>
    </div>
</div>    

<script src="js/all.js" type="text/javascript"></script>
  </body>
</html>