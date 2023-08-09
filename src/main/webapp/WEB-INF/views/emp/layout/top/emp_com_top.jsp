<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- ============================================================== -->
<!-- Preloader - style you can find in spinners.css -->
<!-- ============================================================== -->
<div class="preloader">
	<div class="lds-ripple">
		<div class="lds-pos"></div>
		<div class="lds-pos"></div>
	</div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
	<!-- ============================================================== -->
	<!-- Topbar header - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div class="container-xl g-0">
		<header class="topbar container-xl" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-lg">
				<div class="navbar-header" data-logobg="skin6">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-lg-none" href="javascript:void(0)">
						<i class="ti-menu ti-close"></i>
					</a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<div class="navbar-brand">
						<!-- Logo icon -->
						<a href="index.html">
							<img src="../assets/images/ddit_logo01.png" alt="" class="img-fluid" />
						</a>
					</div>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-lg-none waves-effect waves-light" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<i class="ti-more"></i>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-left me-auto ms-3 ps-1">

						<!-- ============================================================== -->
						<!-- Top nav 메뉴 -->
						<!-- ============================================================== -->
						<ul class="navbar-nav flex-row flex-wrap bd-navbar-nav pt-0 py-md-0">
							<li class="nav-item col-6 col-md-auto"><a class="nav-link fw-bold" href="/" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Bootstrap');">Home</a></li>
							<li class="nav-item col-6 col-md-auto"><a class="nav-link fw-bold active" aria-current="true" href="/docs/5.0/getting-started/introduction/" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Docs');">담당반관리</a></li>
							<li class="nav-item col-6 col-md-auto"><a class="nav-link fw-bold" href="/docs/5.0/examples/" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Examples');">수업</a></li>
							<li class="nav-item col-6 col-md-auto"><a class="nav-link fw-bold" href="https://icons.getbootstrap.com/" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Icons');" target="_blank" rel="noopener">학생상담</a></li>
							<li class="nav-item col-6 col-md-auto"><a class="nav-link fw-bold" href="https://themes.getbootstrap.com/" onclick="ga('send', 'event', 'Navbar', 'Community links', 'Themes');" target="_blank" rel="noopener">프로젝트</a></li>
						</ul>
						<!-- Top 메뉴 끝! -->

					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-end">
						<!-- ============================================================== -->
						<!-- User profile -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="javascript:void(0)" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img src="../assets/images/users/profile-pic.jpg" alt="user" class="rounded-circle" width="40" />
								<span class="ms-2 d-none d-lg-inline-block"><span class="text-dark"><sec:authentication property="principal.member.userNo"/></span><span>님 (<sec:authentication property="principal.member.userType"/>)</span> <i data-feather="chevron-down" class="svg-icon"></i></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-right user-dd animated flipInY">
								<a class="dropdown-item" href="javascript:void(0)">
									<i data-feather="user" class="svg-icon me-2 ms-1"></i> My Profile
								</a>
								<a class="dropdown-item" href="javascript:void(0)">
									<i data-feather="credit-card" class="svg-icon me-2 ms-1"></i> My Balance
								</a>
								<a class="dropdown-item" href="javascript:void(0)">
									<i data-feather="mail" class="svg-icon me-2 ms-1"></i> Inbox
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)">
									<i data-feather="settings" class="svg-icon me-2 ms-1"></i> Account Setting
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout">
									<i data-feather="power" class="svg-icon me-2 ms-1"></i> Logout
								</a>
								<div class="dropdown-divider"></div>
								<div class="pl-4 p-3">
									<a href="javascript:void(0)" class="btn btn-sm btn-info">View Profile</a>
								</div>
							</div></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<!-- Notification -->
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle pl-md-3 position-relative" href="javascript:void(0)" id="bell" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span><i data-feather="bell" class="svg-icon"></i></span> <span class="badge text-bg-primary notify-no rounded-circle">5</span>
							</a>
							<div class="dropdown-menu dropdown-menu-end dropdown-menu-left mailbox animated bounceInDown">
								<ul class="list-style-none">
									<li>
										<div class="message-center notifications position-relative">
											<!-- Message -->
											<a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
												<div class="btn btn-danger rounded-circle btn-circle">
													<i data-feather="airplay" class="text-white"></i>
												</div>
												<div class="w-75 d-inline-block v-middle ps-2">
													<h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
													<span class="font-12 text-nowrap d-block text-muted">Just see the my new admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
												<span class="btn btn-success text-white rounded-circle btn-circle"><i data-feather="calendar" class="text-white"></i></span>
												<div class="w-75 d-inline-block v-middle ps-2">
													<h6 class="message-title mb-0 mt-1">Event today</h6>
													<span class="font-12 text-nowrap d-block text-muted text-truncate">Just a reminder that you have event</span> <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
												<span class="btn btn-info rounded-circle btn-circle"><i data-feather="settings" class="text-white"></i></span>
												<div class="w-75 d-inline-block v-middle ps-2">
													<h6 class="message-title mb-0 mt-1">Settings</h6>
													<span class="font-12 text-nowrap d-block text-muted text-truncate">You can customize this template as you want</span> <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="message-item d-flex align-items-center border-bottom px-3 py-2">
												<span class="btn btn-primary rounded-circle btn-circle"><i data-feather="box" class="text-white"></i></span>
												<div class="w-75 d-inline-block v-middle ps-2">
													<h6 class="message-title mb-0 mt-1">Pavan kumar</h6>
													<span class="font-12 text-nowrap d-block text-muted">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
												</div>
											</a>
										</div>
									</li>
									<li><a class="nav-link pt-3 text-center text-dark" href="javascript:void(0);">
											<strong>Check all notifications</strong> <i class="fa fa-angle-right"></i>
										</a></li>
								</ul>
							</div></li>
						<!-- End Notification -->
					</ul>
				</div>
			</nav>
		</header>
	</div>
	<!-- ============================================================== -->
	<!-- End Topbar header -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
	<div class="container-xl g-0">
		<aside class="left-sidebar" data-sidebarbg="skin6">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar" data-sidebarbg="skin6">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="index.html" aria-expanded="false">
								<i data-feather="home" class="feather-icon"></i><span class="hide-menu">Dashboard</span>
							</a></li>
						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Applications</span></li>

						<li class="sidebar-item"><a class="sidebar-link" href="ticket-list.html" aria-expanded="false">
								<i data-feather="tag" class="feather-icon"></i><span class="hide-menu">Ticket List </span>
							</a></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="app-chat.html" aria-expanded="false">
								<i data-feather="message-square" class="feather-icon"></i><span class="hide-menu">Chat</span>
							</a></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="app-calendar.html" aria-expanded="false">
								<i data-feather="calendar" class="feather-icon"></i><span class="hide-menu">Calendar</span>
							</a></li>

						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Components</span></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="file-text" class="feather-icon"></i><span class="hide-menu">Forms </span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link">
										<span class="hide-menu"> Form Inputs </span>
									</a></li>
								<li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link">
										<span class="hide-menu"> Form Grids </span>
									</a></li>
								<li class="sidebar-item"><a href="form-checkbox-radio.html" class="sidebar-link">
										<span class="hide-menu"> Checkboxes & Radios </span>
									</a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="grid" class="feather-icon"></i><span class="hide-menu">Tables </span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="table-basic.html" class="sidebar-link">
										<span class="hide-menu"> Basic Table </span>
									</a></li>
								<li class="sidebar-item"><a href="table-dark-basic.html" class="sidebar-link">
										<span class="hide-menu"> Dark Basic Table </span>
									</a></li>
								<li class="sidebar-item"><a href="table-sizing.html" class="sidebar-link">
										<span class="hide-menu"> Sizing Table </span>
									</a></li>
								<li class="sidebar-item"><a href="table-layout-coloured.html" class="sidebar-link">
										<span class="hide-menu"> Coloured Table Layout </span>
									</a></li>
								<li class="sidebar-item"><a href="table-datatable-basic.html" class="sidebar-link">
										<span class="hide-menu"> Basic Datatables Layout </span>
									</a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="bar-chart" class="feather-icon"></i><span class="hide-menu">Charts </span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="chart-morris.html" class="sidebar-link">
										<span class="hide-menu"> Morris Chart </span>
									</a></li>
								<li class="sidebar-item"><a href="chart-chart-js.html" class="sidebar-link">
										<span class="hide-menu"> ChartJs </span>
									</a></li>
								<li class="sidebar-item"><a href="chart-knob.html" class="sidebar-link">
										<span class="hide-menu"> Knob Chart </span>
									</a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="box" class="feather-icon"></i><span class="hide-menu">UI Elements </span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="ui-buttons.html" class="sidebar-link">
										<span class="hide-menu"> Buttons </span>
									</a></li>
								<li class="sidebar-item"><a href="ui-modals.html" class="sidebar-link">
										<span class="hide-menu"> Modals </span>
									</a></li>
								<li class="sidebar-item"><a href="ui-tab.html" class="sidebar-link">
										<span class="hide-menu"> Tabs </span>
									</a></li>
								<li class="sidebar-item"><a href="ui-tooltip-popover.html" class="sidebar-link">
										<span class="hide-menu"> Tooltip & Popover</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-notification.html" class="sidebar-link">
										<span class="hide-menu">Notification</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-progressbar.html" class="sidebar-link">
										<span class="hide-menu">Progressbar</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-typography.html" class="sidebar-link">
										<span class="hide-menu">Typography</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-bootstrap.html" class="sidebar-link">
										<span class="hide-menu">Bootstrap UI</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-breadcrumb.html" class="sidebar-link">
										<span class="hide-menu">Breadcrumb</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-list-media.html" class="sidebar-link">
										<span class="hide-menu">List Media</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-grid.html" class="sidebar-link">
										<span class="hide-menu"> Grid </span>
									</a></li>
								<li class="sidebar-item"><a href="ui-carousel.html" class="sidebar-link">
										<span class="hide-menu"> Carousel</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-scrollspy.html" class="sidebar-link">
										<span class="hide-menu"> Scrollspy</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-toasts.html" class="sidebar-link">
										<span class="hide-menu"> Toasts</span>
									</a></li>
								<li class="sidebar-item"><a href="ui-spinner.html" class="sidebar-link">
										<span class="hide-menu"> Spinner </span>
									</a></li>
							</ul></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="ui-cards.html" aria-expanded="false">
								<i data-feather="sidebar" class="feather-icon"></i><span class="hide-menu">Cards </span>
							</a></li>
						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Authentication</span></li>

						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="authentication-login1.html" aria-expanded="false">
								<i data-feather="lock" class="feather-icon"></i><span class="hide-menu">Login </span>
							</a></li>
						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="authentication-register1.html" aria-expanded="false">
								<i data-feather="lock" class="feather-icon"></i><span class="hide-menu">Register </span>
							</a></li>

						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="feather" class="feather-icon"></i><span class="hide-menu">Icons </span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="icon-fontawesome.html" class="sidebar-link">
										<span class="hide-menu"> Fontawesome Icons </span>
									</a></li>

								<li class="sidebar-item"><a href="icon-simple-lineicon.html" class="sidebar-link">
										<span class="hide-menu"> Simple Line Icons </span>
									</a></li>
							</ul></li>

						<li class="list-divider"></li>
						<li class="nav-small-cap"><span class="hide-menu">Extra</span></li>

						<li class="sidebar-item"><a class="sidebar-link sidebar-link" href="authentication-login1.html" aria-expanded="false">
								<i data-feather="log-out" class="feather-icon"></i><span class="hide-menu">Logout</span>
							</a></li>
						<li class="sidebar-item"><a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
								<i data-feather="crosshair" class="feather-icon"></i><span class="hide-menu">Multi level dd</span>
							</a>
							<ul aria-expanded="false" class="collapse first-level base-level-line">
								<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
										<span class="hide-menu"> item 1.1</span>
									</a></li>
								<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
										<span class="hide-menu"> item 1.2</span>
									</a></li>
								<li class="sidebar-item"><a class="has-arrow sidebar-link" href="javascript:void(0)" aria-expanded="false">
										<span class="hide-menu">Menu 1.3</span>
									</a>
									<ul aria-expanded="false" class="collapse second-level base-level-line">
										<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
												<span class="hide-menu"> item 1.3.1</span>
											</a></li>
										<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
												<span class="hide-menu"> item 1.3.2</span>
											</a></li>
										<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
												<span class="hide-menu"> item 1.3.3</span>
											</a></li>
										<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
												<span class="hide-menu"> item 1.3.4</span>
											</a></li>
									</ul></li>
								<li class="sidebar-item"><a href="javascript:void(0)" class="sidebar-link">
										<span class="hide-menu"> item 1.4</span>
									</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>

		<!-- ============================================================== -->
		<!-- 타일즈 - 컨텐츠  시작 -->
		<!-- ============================================================== -->
		<div class="page-wrapper">

			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<!-- 해당 페이지의 메뉴 이름 -->
						<h4 class="page-title text-truncate text-dark font-weight-medium mb-1">메뉴제목이 들어갑니다.</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<!--  해당 페이지의 메뉴구조 -->
									<li class="breadcrumb-item"><a href="index.html" class="text-muted">상위메뉴명</a></li>
									<li class="breadcrumb-item text-muted active" aria-current="page">하위메뉴명</li>
								</ol>
							</nav>
						</div>
					</div>
					<div class="col-5 align-self-center">
						<!-- 셀렉트 메뉴 사용하려면 살려서 사용 -->
						<!-- <div class="customize-input float-end">
									<select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
										<option selected>Aug 23</option>
										<option value="1">July 23</option>
										<option value="2">Jun 23</option>
									</select>
								</div> -->
					</div>
				</div>
			</div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">