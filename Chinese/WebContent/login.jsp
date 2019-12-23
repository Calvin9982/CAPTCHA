<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<link href="${pageContext.request.contextPath}/static/bootstrap/css/auth.css" rel="stylesheet">
</head>
<body style="background: url(static/2.jpg) no-repeat;">
<div class="lowin">
		<div class="lowin-brand">
			<img src="${pageContext.request.contextPath}/static/logo.jpg" alt="logo">
		</div>
		<div class="lowin-wrapper">
			<div class="lowin-box lowin-register">
				<div class="lowin-box-inner">
					<form action="<%=request.getContextPath()%>/servlet/LoginServlet" method="get">
						<p>Let's log in your account</p>
						
						<div class="lowin-group">
							<label>Username</label>
							<input type="email" autocomplete="email" name="email" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Password</label>
							<input type="password" name="password" autocomplete="current-password" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>验证码</label>
							<img alt="验证码" id="imagecode" src="<%=request.getContextPath()%>/servlet/ImageServlet"/>
							<a href="javascript:reloadedCode();">换一张</a><br>
							<input type="text" name="checkcode" autocomplete="name" class="lowin-input">
						</div>
						<input type="submit" value="提交" class="lowin-btn">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
		function reloadedCode() {
			var time = new Date().getTime(); //防止由于缓存而不更新图片
			document.getElementById("imagecode").src="<%=request.getContextPath()%>/servlet/ImageServlet?d="+time;
		}
</script>
</html>