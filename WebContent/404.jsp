<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>CAMBRIGHT | Page Not Found</title>
<meta name="author" content="name" />
<meta name="keywords" content="404, css3, html5, template" />
<meta name="description" content="errortemplate" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- Bootstrap CSS -->
<link type="text/css" media="all"
	href="${pageContext.servletContext.contextPath }/assets/css/theme-default/bootstrap.css"
	rel="stylesheet" />
<!-- Template CSS -->
<link type="text/css" media="all"
	href="${pageContext.servletContext.contextPath }/assets/error/style.css"
	rel="stylesheet" />
<!-- Responsive CSS -->
<link type="text/css" media="all"
	href="${pageContext.servletContext.contextPath }/assets/error/responsive.css"
	rel="stylesheet" />

<!-- Favicon -->
<link rel="shortcut icon" href="assets/error/favicon.png" />
</head>
<body>
	<!-- Header -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1>404</h1>
					<h2>Page not found</h2>
					<p>We're sorry, but something went wrong.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- end Header -->

	<!-- Illustration -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="illustration">
						<div class="laptop"></div>
						<div class="hand"></div>
						<div class="caveman"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end Illustration -->

	<!-- Button -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<a href="${pageContext.servletContext.contextPath }/admin"><div
							class="btn btn-action">Take me out of here</div></a>
				</div>
			</div>
		</div>
	</section>
	<!-- end Button -->

	<!-- Footer -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<p>
						Copyright (c) 2016 <strong>Copyright CamBright</strong> All Rights
						Reserved.
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- end Footer -->

	<!-- Scripts -->
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/libs/jquery/jquery-1.11.2.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.servletContext.contextPath }/assets/js/libs/bootstrap/bootstrap.min.js"
		type="text/javascript"></script>

</body>
</html>
