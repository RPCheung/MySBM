<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% String path = request.getContextPath()+"/"; %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>404找不到页面</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet"
	href="<%=path%>/css/app.v2.css"
	type="text/css" />
</head>
<body>
	<section id="content">
	<div class="row m-n">
		<div class="col-sm-4 col-sm-offset-4">
			<div class="text-center m-b-lg">
				<h1 class="h text-white animated fadeInDownBig">404</h1>
			</div>
			<div class="list-group m-b-sm bg-white m-b-lg">
				<a href="index.html" class="list-group-item"> <i
					class="fa fa-chevron-right icon-muted"></i> <i
					class="fa fa-fw fa-home icon-muted"></i> Goto homepage
				</a> <a href="#" class="list-group-item"> <i
					class="fa fa-chevron-right icon-muted"></i> <i
					class="fa fa-fw fa-question icon-muted"></i> Send us a tip
				</a> <a href="#" class="list-group-item"> <i
					class="fa fa-chevron-right icon-muted"></i> <span class="badge">021-215-584</span>
					<i class="fa fa-fw fa-phone icon-muted"></i> Call us
				</a>
			</div>
		</div>
	</div>
	</section>
	<!-- footer -->
	<footer id="footer">
	<div class="text-center padder clearfix">
		<p>
			<small>Mobile first web app framework base on Bootstrap<br>
				&copy; 2016
			</small>
		</p>
	</div>
	</footer>
	
</body>
</html>