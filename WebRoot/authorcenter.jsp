<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>漫读网~~作者用户中心</title>
<meta name="keywords" content="个人中心" />
<meta name="description" content="" />
<link rel="stylesheet" href="../css/index.css" type="text/css"/>
<link rel="stylesheet" href="../css/style.css" type="text/css"/>
<script type="text/javascript" src="../js/jquery1.42.min.js"></script>
<script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
</head>

<body>
    <!--header start-->
    <div id="header">
      <h1>作者个人中心</h1>
      <p>你当前的位置：作者个人中心</p>    
    </div>
     <!--header end-->
    <!--nav-->
     <div id="nav">
    
        <ul>
         <li><a href="index.jsp?author=${author}">首页</a></li>
         <li><a href="<%=basePath%>about.html">关于我</a></li>
         <li><a href="<%=basePath%>write/write_showWrite?author.authorname=${author.authorname}">书籍收藏</a></li>
         <li><a href="<%=basePath%>riji.html">书币充值</a></li>
         <li><a href="<%=basePath%>xc.html">留言板</a></li>
         <div class="clear"></div>
        </ul>
      </div>
       <!--nav end-->
    <!--content start-->
    
 <div id="content">
         <!--left-->
         <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2>个人<span>作品书架</span></h2><a href="<%=basePath%>add_jsp.jsp">写书</a>
           </div>
            
          <div class="content_text">
          <s:iterator value="writeList" status="status">
           <div class="wz">  <h3><a href="write/write_showDetail?write.writeid=<s:property value='writeid'/>"><s:property value="book.bookname" /></a>
				</h3>
             <dl><s:hidden value="write.writeid"></s:hidden>
               <dt><img src="<%=basePath%><s:property value='book.picture'/>" width="104px" height="127px"></dt>
               <dd><p class="dd_text_1"><s:property value="book.bookwenan"/></p>
               <p class="dd_text_2">
               <span class="left author"><s:property value="book.author"/></span><span class="left sj">时间:2014-8-9</span>
               <span class="left fl">分类:<a href="#" title="学无止境"><s:property value="book.booktype"/></a></span>
               <span class="left yd"><a href="book/book_showEdit?book.bookid=${book.bookid}">编辑</a></span>
	            <span class="left yd">
	          <!--    <a href="book/book_deleteBook?book.bookid=${book.bookid}" onclick="return confirm('确认删除？');">删除</a>  
               -->
             <a href="write/write_deleteWrite?write.writeid=<s:property value='writeid'/>&&book.bookid=${book.bookid}">删除</a>  
                            </span>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>
        </s:iterator>
        </div>
        </div>
         <!--left end-->
         <!--right-->
         <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于我</h2>
           <img src="<%=basePath%>images/my.jpg" width="230" height="230" alt="博主"/>
           <p>昵称：<c:out value="${author.authorname}"></c:out></p>
           <p>登录账号：<c:out value="${author.authorid}"></c:out></p>
           <p>简介：</p>
           <p>
		   </p>
          </div>
          <!--栏目分类-->
           <div class="lanmubox">
              <div class="hd">
               <ul><li>精心推荐</li><li>最新文章</li><li class="hd_3">随机文章</li></ul>
              </div>
              <div class="bd">
                <ul>
					<li><a href="#" title="锦绣未央">锦绣未央</a></li>
					<li><a href="#" title="青妤记">青妤记</a></li>
					<li><a href="#" title="卿本妖娆">卿本妖娆</a></li>
					<li><a href="#" title="婉若昭华">婉若昭华</a></li>
					<li><a href="#" title="香初上舞">香初上舞</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="锦绣未央">锦绣未央</a></li>
					<li><a href="#" title="青妤记">青妤记</a></li>
					<li><a href="#" title="卿本妖娆">卿本妖娆</a></li>
					<li><a href="#" title="婉若昭华">婉若昭华</a></li>
					<li><a href="#" title="香初上舞">香初上舞</a></li>
				</ul>
                 <ul>
					<li><a href="#" title="锦绣未央">锦绣未央</a></li>
					<li><a href="#" title="青妤记">青妤记</a></li>
					<li><a href="#" title="卿本妖娆">卿本妖娆</a></li>
					<li><a href="#" title="婉若昭华">婉若昭华</a></li>
					<li><a href="#" title="香初上舞">香初上舞</a></li>
				</ul>
              </div>
           </div>
           <!--end-->
           <div class="link">
            <h2>友情链接</h2>
            <p><a href="http://www.duanliang920.com">star 个人博客</a></p>
           </div>
         </div>
         <!--right end-->
         <div class="clear"></div>
    </div>
    <!--content end-->
    <!--footer start-->
    <div id="footer">
     <p>Design by:<a href="http://www.duanliang920.com" target="_blank">少年</a> 2014-8-9</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="js/nav.js"></script>

</body>
</html>
