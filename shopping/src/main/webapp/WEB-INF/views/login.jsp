<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/shopping/css" />
<spring:url var="js" value="/resources/shopping/js" />
<spring:url var="images" value="/resources/shopping/img" />
<spring:url var="fonts" value="/resources/shopping/fonts" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Online Shopping Website Using Spring MVC and Hibernate">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>

<link rel="stylesheet" type="text/css" media="screen"
	href="${css}/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${css}/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${css}/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${css}/smartadmin-production.min.css">
<script src="${js}/libs/jquery-2.1.1.min.js"></script>
<script src="${js}/libs/jquery-ui-1.10.3.min.js"></script>
</head>
<body
	class="animated fadeInDown  desktop-detected menu-on-top pace-done fixed-page-footer">
	<header id="header"
		style="background: linear-gradient(to bottom, #292727, #5c5b5b); height: 71px; color: #fff;">
		<div id="logo-group">
			<span style="color: #fff; font-size: 48px; padding: 0px 0 0 10px;"><i
				style="cursor: pointer;"
				onclick="window.location.href='${contextRoot}/home'"
				class="fa fa-tasks"></i></span>
			<%-- <span id="logo"> <img
				src="${images}/ibmlogo.png" style="cursor: pointer;"
				onclick="window.location.href='${contextRoot}/home'"
				alt="SmartAdmin">
			</span> --%>
		</div>

		<span id="extr-page-header-space"> <span
			class="hidden-mobile hiddex-xs">Need an account?</span> <a
			href="${contextRoot}/membership" class="btn btn-danger">Create
				account</a>
		</span>

	</header>
	<div id="main" role="main">

		<!-- MAIN CONTENT -->
		<div id="content" class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
					<h1 class="txt-color-red login-header-big">Online Shopping
						Login</h1>
					<div class="hero">

						<div class="pull-left login-desc-box-l">
							<h4 class="paragraph-header">Get access to your Orders,
								Wishlist and Recommendations!</h4>

						</div>

						<%-- <img src="${images}/demo/laptops.png"
							class="pull-right display-image" alt="" style="width: 210px"> --%>

					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
							style="padding-top: 29px; text-align: center;">
							<img src="${images}/demo/laptops.png" class="" alt=""
								style="width: 376px;">
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<h5 class="about-heading">What is an eCommerce website?</h5>
							<p>eCommerce websites are online portals that facilitate
								online transactions of goods and services through means of the
								transfer of information and funds over the Internet..</p>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							<h5 class="about-heading">Different Types of eCommerce
								Websites</h5>
							<p>Business-to-Business (B2B), Business-to-Consumer (B2C),
								Consumer-to- Consumer (C2C), Consumer-to-Business (C2B),
								Business-to-Administration (B2A), Consumer-to-Administration
								(C2A)</p>
						</div>
					</div>

				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
					<div class="well no-padding"
						style="border: 1px solid #717070; box-shadow: 0px 0px 0px #a8a5a5;">
						<form action="${contextRoot}/login" method="POST" id="login-form"
							class="smart-form client-form" novalidate="novalidate">
							<header style="background: #716f6f !important; color: #fff;">
								Sign In </header>
							<fieldset>
								<section>
									<label class="label">E-mail</label> <label class="input">
										<i class="icon-append fa fa-user"></i> <input type="email"
										name="username" id="username" /> <b
										class="tooltip tooltip-top-right"><i
											class="fa fa-user txt-color-teal"></i> Please enter email
											address/username</b>
									</label>
								</section>
								<section>
									<label class="label">Password</label> <label class="input">
										<i class="icon-append fa fa-lock"></i> <input type="password"
										name="password" id="password" /> <b
										class="tooltip tooltip-top-right"><i
											class="fa fa-lock txt-color-teal"></i> Enter your password</b>
									</label>
									<div class="note" style="margin-top: 22px;">
										<a href="forgotpassword.html">Forgot password?</a>
									</div>
								</section>
							</fieldset>
							<footer style="background: #717070;">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<button type="submit" class="btn btn-default">Sign in</button>
							</footer>
						</form>

					</div>

				</div>
			</div>
		</div>

	</div>

	<!-- <div class="page-footer">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">E-Commerce <span
					class="hidden-xs"> - Web Application Framework</span>
				</span>
			</div>

			<div class="col-xs-6 col-sm-6 text-right hidden-xs">
				<span class="txt-color-white">Designed & Developed by <span
					class="hidden-xs"> - Anurag Ghosh</span>
				</span>

			</div>
		</div>
	</div> -->

	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="${contextPath}/comDash/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>
	<script src="${js}/app.config.js"></script>
	<script src="${js}/bootstrap/bootstrap.min.js"></script>
	<script src="${js}/notification/SmartNotification.min.js"></script>
	<script src="${js}/plugin/jquery-validate/jquery.validate.min.js"></script>
	<script src="${js}/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>
	<script src="${js}/app.min.js"></script>
	<script src="${js}/plugin/bootstrapvalidator/bootstrapValidator.min.js"></script>
	<script src="${contextPath}/comDash/complianceDashMyApp.js"></script>
	<script src="${js}/myapp.js"></script>
	<!-- jQuery -->


</body>

</html>