<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/regist.css'/>">
  <!-- background: url(/goods/images/bg_btns.png) repeat-x 0px -132px;背景图在x轴上循环显示，内容选自背景图坐标（0,-132）像素的位置 -->
  
  	<!-- 导入jquery，注意如果有依赖的包必须先导包 -->
  	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>" ></script>
  	<script type="text/javascript" src="<c:url value='/jsps/js/user/regist.js'/>" ></script>
  
  <body>
  	<div id="divMain">
  		<div id="divTitle">
  			<span id="spanTitle">新用户注册</span>
  		</div>
  		<div id="divBody">
  		<form action="<c:url value='/UserServlet'/>" method="post" id="registForm">
  			<!-- 请求的servlet -->
  			<input type="hidden" name="method" value="regist"/>  <!-- 请求的servlet的方法 -->
  			<table id="tableForm">
  				<tr>
  					<td class="tdText">用户名：</td>
  					<td class="tdInput">
  						<input class="inputClass" type="text" name="loginname" id="loginname"/>
  					</td>
  					<td class="tdError">
  						<label class="ErrorClass" id="loginnameError">用户名不能为空！</label>
  					</td>
  				</tr>
  				<tr>
  					<td class="tdText">登录密码：</td>
  					<td>
  						<input class="inputClass" type="password" name="loginpass" id="loginpass"/>
  					</td>
  					<td>
  						<label class="ErrorClass" id="loginpassError">密码不能为空！</label>
  					</td>
  				</tr>
  				<tr>
  					<td class="tdText">确认密码：</td>
  					<td>
  						<input class="inputClass" type="password" name="reloginpass" id="reloginpass"/>
  					</td>
  					<td>
  						<label class="ErrorClass" id="reloginpassError"></label>
  					</td>
  				</tr>
  				<tr>
  					<td class="tdText">Email：</td>
  					<td>
  						<input class="inputClass" type="text" name="email" id="email"/>
  					</td>
  					<td>
  						<label class="ErrorClass" id="emailError"></label>
  					</td>
  				</tr>
  				<tr>
  					<td class="tdText">验证码：</td>
  					<td>
  						<input class="inputClass" type="text" name="verifyCode" id="verifyCode"/>
  					</td>
  					<td>
  						<label class="ErrorClass" id="verifyCodeError"></label>
  					</td>
  				</tr>
  				<tr>
  					<td></td>
  					<td>
  						<div id="divVerifyCode"><img id="imgVerifyCode" src="<c:url value='/VerifyCodeServlet'/>"/></div>
  					</td>
  					<td>
  						<label><a href="javascript:_hyz()">换一张</a></label>
  					</td>
  				</tr>
  				<tr>
  					<td></td>
  					<td>
  						<input type="image" id="submitBtn" src="<c:url value='/images/regist1.jpg'/>"/>
  					</td>
  					<td>
  					</td>
  				</tr>
  			</table>
  		</form>
  		</div>
  	</div>
  </body>
</html>
	