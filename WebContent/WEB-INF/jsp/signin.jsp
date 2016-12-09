<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>用户登录页面</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<%
	String path = request.getContextPath() + "/";
%>
<link rel="stylesheet" href="<%=path%>css/app.v2.css" type="text/css" />
</head>
<body>
	<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
	<div class="container aside-xxl">
		<a class="navbar-brand block" href="index.html">MyWeb</a>
		<section class="panel panel-default bg-white m-t-lg"> <header
			class="panel-heading text-center"> <strong>Sign in</strong>
		</header>
		<form action="index.html" class="panel-body wrapper-lg">
			<div class="form-group">
				<label class="control-label">Email</label> <input type="email"
					id="inputEmail" placeholder="test@example.com"
					class="form-control input-lg">
			</div>
			<div class="form-group">
				<label class="control-label">Password</label> <input type="password"
					id="inputPassword" placeholder="Password"
					class="form-control input-lg">
			</div>
			<div class="checkbox">
				<label> <input type="checkbox"> Keep me logged in
				</label>
			</div>
			<a href="#" class="pull-right m-t-xs"><small>Forgot
					password?</small></a>
			<button type="submit" class="btn btn-primary">Sign in</button>
			<div class="line line-dashed"></div>
			<a href="#" class="btn btn-facebook btn-block m-b-sm"><i
				class="fa fa-facebook pull-left"></i>Sign in with Facebook</a> <a
				href="#" class="btn btn-twitter btn-block"><i
				class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
			<div class="line line-dashed"></div>
			<p class="text-muted text-center">
				<small>Do not have an account?</small>
			</p>
			<a
				href="<%=response.encodeRedirectURL(path + "MyWebContorller/signup")%>"
				class="btn btn-default btn-block" >Create an account</a>

		</form>
		</section>
	</div>
	</section>
	<!-- footer -->
	<footer id="footer">
	<div class="text-center padder">
		<p>
			<small>Web app framework base on Bootstrap<br> &copy;
				2016
			</small>
		</p>
	</div>
	</footer>
	<!-- / footer -->
	<script type="text/javascript" src="<%=path%>js/jquery-3.1.1.js"></script>
	<script type="text/javascript">
		var path = "<%=path%>MyWebContorller/passwordChecking";
		var inputEmail,inputPassword;
		$("button").click(function() {
			inputEmail = $("input#inputEmail").val();
			regExp = new RegExp("@");
			if (regExp.test(inputEmail)) {
				inputPassword = $("input#inputPassword").val();
			}
			$.post(path, {
				email : inputEmail,
				password : inputPassword
			}, function(data, status) {
				if (data != "1"){
					alert("密码错误");
					}else{
					window.location.href = "";
					
						}
			});
		});
	</script>
	<!-- Bootstrap -->
	<!-- App -->
</body>
</html>