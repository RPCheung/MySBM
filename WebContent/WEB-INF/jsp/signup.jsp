<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>用户注册页面</title>
<%
	String path = request.getContextPath() + "/";
%>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="<%=path%>css/app.v2.css" type="text/css" />
</head>
<body>
	<section id="content" class="m-t-lg wrapper-md animated fadeInDown">
	<div class="container aside-xxl">
		<a class="navbar-brand block" href="index.html">MyWeb</a>
		<section class="panel panel-default m-t-lg bg-white"> <header
			class="panel-heading text-center"> <strong>Sign up</strong>
		</header>
		<form action="index.html" class="panel-body wrapper-lg">
			<div class="form-group">
				<label class="control-label">Name</label> <input type="text"
					placeholder="eg. Your name or company"
					class="form-control input-lg">
			</div>
			<div class="form-group">
				<label class="control-label">Email</label> <input type="email"
					placeholder="test@example.com" class="form-control input-lg">
			</div>
			<div class="form-group">
				<label class="control-label">Password</label> <input type="password"
					id="inputPassword" placeholder="Type a password"
					class="form-control input-lg">
			</div>
			<div class="checkbox">
				<label> <input type="checkbox" id="policy" checked=""> Agree the <a
					href="#">terms and policy</a>
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Sign up</button>
			<div class="line line-dashed"></div>
			<p class="text-muted text-center">
				<small>Already have an account?</small>
			</p>
			<a href="signin.html" class="btn btn-default btn-block">Sign in</a>
		</form>
		</section>
	</div>
	</section>
	<!-- footer -->
	<footer id="footer">
	<div class="text-center padder clearfix">
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
		$("button").click(function() {
			var policyCheckbox = $("input#policy").val();
			alert(policyCheckbox);
			var inputEmail = $("input#inputEmail").val();
			var regExp = new regExp("@");

			if (regExp.test(inputEmail)) {
				var inputPassword = $("input#inputPassword").val();
				
			} else {
				
			}
		});
	</script>
	<!-- Bootstrap -->
	<!-- App -->
</body>
</html>