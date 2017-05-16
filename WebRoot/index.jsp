<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>漫读网,宁静淡泊的阅读世界~~</title>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="css/master.css" type="text/css" rel="stylesheet" />
<link href="css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<!--  <meta http-equiv="Refresh" content="0;url=book/book_showBook">
-->
<style type="text/css">
.div141Index {
	background-image: url(images/bottom-bg.gif);
	height: 35px;
	width: 195px;
	font-size: 12px;
	text-align: left;
	padding-left: 5px;
	line-height: 30px;
}

.div142Index {
	height: 190px;
	width: 170px;
	color: red;
}

.div2Index {
	width: 1200px;
	font-size: 20px;
	font-family: 汉仪咪咪体简;
	color: #0080ff;
}
</style>
</head>

<body>
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


<!--首页主体-->
	<div class="xc_pic ofHidden clearfix">
    <div class="div2Index">
	<img src="images/index-1.jpg" />
    <marquee class="marqueeIndex" direction="left" onmouseover="this.stop()" onmouseout="this.start()">
    	<a href="#" class="aMarqueeIndex">恭喜真爱未凉获得榜单第一</a>&nbsp;&nbsp;
        <a href="#" class="aMarqueeIndex">程小一悬赏1000金币</a>&nbsp;&nbsp;
        <a href="#" class="aMarqueeIndex">冷家小妞与冷非笑并列榜单第二</a>&nbsp;&nbsp;
        <a href="#" class="aMarqueeIndex">叫我懒懒向某某投了一张霸王票</a>&nbsp;&nbsp;
        <a href="#" class="aMarqueeIndex">谷主夫人升职记已完结</a>&nbsp;&nbsp;
    </marquee>
</div>
   <div class="block clearfix ofHidden">
        <b></b>
        <ul>
        	<li><a href=""><img src="images/dianzi.png"></a></li>
            <li><a href=""><img src="images/team.png"></a></li>
            <li><a href=""><img src="images/case.png"></a></li>
            <li><a href=""><img src="images/kefu.png"></a></li>
        </ul>
    </div> 
	</div>
    
    <div class="clearfix ofHidden block yh pt20">
    	<div class="index_left fleft">
        	<div class="t1">强烈推荐</div>
            
            <!--九宫格-->
            <div class="ge ofHidden">
            	<div class="w345 fleft h245 ofHidden"><a href="" class="h245"><img src="images/1.jpg" width="345" height="245"><p class="f16">穿越言情</p><b class="h45"></b></a></div>
                <div class="w345 fright h120 ofHidden"><a href="" class="h120"><img src="images/2.jpg" width="345" height="120"><p class="f14">都市生活</p><b class="h30"></b></a></div>
                <div class="w345 fright mt10">
                	<span class="w170 fleft h115 ofHidden"><a href="" class="h115"><img src="images/3.jpg" width="170" height="115"><p class="f14">古代言情</p><b class="h30"></b></a></span>
                    <span class="w170 fright h115 ofHidden"><a href="" class="h115"><img src="images/4.jpg" width="170" height="115"><p class="f14">玄幻奇幻</p><b class="h30"></b></a></span>
                </div>
            </div>
            
            <div class="index_pic1"><img src="images/index_1.jpg"></div>
            <ul class="round clearfix ofHidden">
                <li><a href="book/book_showDetail?book.bookid=4"><img src="images/round1.jpg"><p>侯门毒妃</p></a></li>
                <li><a href="book/book_showDetail?book.bookid=8"><img src="images/round2.jpg"><p>傲娇神探妙法医</p></a></li>
                <li><a href="book/book_showDetail?book.bookid=5"><img src="images/round3.jpg"><p>萌妻高高在上</p></a></li>
                <li><a href="book/book_showDetail?book.bookid=13"><img src="images/round4.jpg"><p>史蒂夫·乔布斯传记</p></a></li>
                <li><a href="book/book_showDetail?book.bookid=11"><img src="images/round5.jpg"><p>飘 </p></a></li>
                <li><a href="book/book_showDetail?book.bookid=7"><img src="images/round6.jpg"><p>七十八号死亡档案</p></a></li>
            </ul>
        </div>
        
        
        <!---->
    	<div class="index_right fright">
        	<div class="div141Index">
			<span style="margin-right:5px"></span>
        </div>
        <div class="t1">近期预告<span class="f14 c_666">Recent Books</span></div>
        <div class="div142Index">
            <marquee class="marquee2Index" scrollamount="2" direction="up" onmouseover="this.stop()" onmouseout="this.start()">
                	<span style="margin-right:5px">▪</span>红楼第一狗仔<br />
                    <span style="margin-right:5px">▪</span>为你蓝的那片海<br />
                    <span style="margin-right:5px">▪</span>不巧，我在等你<br />
                    <span style="margin-right:5px">▪</span>时光与你共眠<br />
                    <span style="margin-right:5px">▪</span>表哥见我多妩媚<br />
                    <span style="margin-right:5px">▪</span>隔壁住着小鲜肉<br />
                    <span style="margin-right:5px">▪</span>重生之学霸的回归<br />
                    <span style="margin-right:5px">▪</span>心机灰姑娘<br />
            </marquee>
        </div>
        
    
            <div class="t1">联系我们<span class="f14 c_666">Contact us</span></div>
              
            <div class="lx_nr noyh">
            <ul class="alzs clearfix ofHidden">
            <li><a href="">电话：0517-85158777</a></li>
            <li><a href="">邮箱：2079491718@qq.com</a></li>  
            <li><a href="">公司官网：www.tairui.cn</a></li> 
            <li><a href="">地址：中央民族大学</a></li>
            </ul>
            </div>
            
            <div class="t1 mt20">宣传视频 <span class="f14 c_666">Movie</span></div>
            <p class="mt20"><img src="images/xc_video.jpg" width="270"></p>
        </div>
    </div>
    
<div class="team clearfix yh mt20">

<div class="block">
<div class="t1"><a href="" class="fright f12">漫说</a>作家团队</div>			
			<div class="bd">
				<ul class="picList">
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic7.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic8.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic3.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic4.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic5.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
					<li>
						<div class="pic"><a href="#" target="_blank"><img src="images/pic6.jpg" /></a></div>
						<div class="title"><a href="#" target="_blank">作家</a></div>
					</li>
				</ul>
			</div>
		</div>
</div>
        
        
<div class="foot clearfix">
	<div class="block">
        <div class="fleft">
            <p><a href="" class="a1">联系我们</a>|<a href="" class="a2">中央民族大学</a>|<a href="" class="a3">合作伙伴</a>|<a href="" class="a4">网站地图</a></p>
            <p>Copyright © 2014-2015 www.haiis.com,All Rights Reserved 来源:<a href="http://www.mycodes.net/" target="_blank">Team8</a></p>
            <p>版权所有 漫读网</p>
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
