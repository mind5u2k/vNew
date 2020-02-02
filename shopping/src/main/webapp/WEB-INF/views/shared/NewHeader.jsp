<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<header id="header" style="background: #313131 !important;">
	<div id="logo-group">
		<span style="color: #fff; font-size: 36px; padding-left: 12px;"><i
			style="cursor: pointer;"
			onclick="window.location.href='${contextRoot}/home'"
			class="fa fa-tasks"></i></span>
	</div>
	<div class="pull-right">
		<div id="hide-menu" class="btn-header pull-right">
			<span> <a href="javascript:void(0);" data-action="toggleMenu"
				title="Collapse Menu"><i class="fa fa-reorder"></i></a>
			</span>
		</div>
		<div id="logout" class="btn-header transparent pull-right">
			<span> <a href="login.html" title="Sign Out"
				data-action="userLogout"
				data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
					class="fa fa-sign-out"></i></a>
			</span>
		</div>
		<security:authorize access="isAnonymous()">
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="${contextRoot}/login" title="Full Screen"
					style="font-weight: 100; font-size: 14px; cursor: pointer !important; padding: 2px 8px;">
						Login </a>
				</span>
			</div>
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="${contextRoot}/membership"
					title="Full Screen"
					style="font-weight: 100; font-size: 14px; cursor: pointer !important; padding: 2px 8px;">
						Sign Up</a>
				</span>
			</div>
		</security:authorize>

		<div id="fullscreen" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0);"
				data-action="launchFullscreen" title="Full Screen"><i
					class="fa fa-arrows-alt"></i></a>
			</span>
		</div>
		<security:authorize access="isAuthenticated()">
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="${contextRoot}/logout" title="Full Screen"
					style="font-weight: 100; font-size: 14px; cursor: pointer !important; padding: 2px 8px;">
						Logout</a>
				</span>
			</div>
			<ul class="header-dropdown-list hidden-xs">
				<li class=""><a href="#" class="dropdown-toggle"
					style="color: #fff; font-size: 14px; font-weight: 100 !important; padding-right: 10px;"
					data-toggle="dropdown" aria-expanded="true"> <span>
							${userModel.fullName} </span>
				</a></li>
			</ul>
		</security:authorize>
	</div>
</header>
<aside id="left-panel" style="background: #464545 !important;">
	<div class="login-info" style="background: #202440;">
		<span style="font-size: 18px; text-align: center;"> <a
			href="javascript:void(0);" id="show-shortcut"
			data-action="toggleShortcut" style="color: #fff;"> <span>
					<%=session.getAttribute("ComplianceRole")%>
			</span>
		</a>
		</span>
	</div>
	<div style="margin: auto; display: table;">
		<nav>
			<ul>
				<li id="home" style="border-left: 1px solid #222"><a
					href="${contextRoot}/home"><i class="fa fa-lg fa-fw fa-home"></i>
						<span class="menu-item-parent">Home</span></a></li>
				<li id="about"><a href="${contextRoot}/about"><i
						class="fa fa-lg fa-fw fa-user"></i> <span class="menu-item-parent">About
							Us</span></a></li>
				<li id="armTool"><a href="${contextRoot}/armTool"><i
						class="fa fa-lg fa-fw fa-laptop"></i> <span
						class="menu-item-parent">ARM Tool</span></a></li>
				<li id="training"><a href="${contextRoot}/training"><i
						class="fa fa-lg fa-fw fa-dashboard"></i> <span
						class="menu-item-parent">Trainings</span></a></li>
				<li id="privacy"><a href="${contextRoot}/privacy"><i
						class="fa fa-lg fa-fw fa-key"></i> <span class="menu-item-parent">Privacy</span></a></li>
				<li id="listProducts"><a href="${contextRoot}/contact"><i
						class="fa fa-lg fa-fw fa-phone"></i> <span
						class="menu-item-parent">Contact Us</span></a></li>
				<security:authorize access="hasAuthority('USER')">
					<li id="listProducts"><a
						href="${contextRoot}/show/all/products"><i
							class="fa fa-lg fa-fw fa-shopping-cart"> <em>${userModel.cart.cartLines}</em>
						</i> <span class="menu-item-parent">Cart</span></a></li>
				</security:authorize>
				<security:authorize access="hasAuthority('ADMIN')">
					<li id="manageProduct"><a href="${contextRoot}/manage/product"><i
							class="fa fa-lg fa-fw fa-reorder"></i> <span
							class="menu-item-parent">Manage Products</span></a></li>
				</security:authorize>
			</ul>
		</nav>
	</div>
</aside>
