<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>Login & Register - Online Courses & Education Bootstrap5
			Template</title>
		<meta name="robots" content="noindex, follow" />
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/assets/images/favicon.png">

		<!-- CSS
        ============================================ -->
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/bootstrap.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/slick.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/vendor/slick-theme.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/sal.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/feather.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/fontawesome.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/euclid-circulara.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/swiper.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/magnify.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/odometer.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/animation.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/bootstrap-select.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/jquery-ui.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/magnigy-popup.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/plugins/plyr.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style_add.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/joy/login.css">
	</head>

	<body class="rbt-header-sticky">

		<!-- Start Header Area  頁首 桌機-->
		<header class="rbt-header rbt-header-10">
			<div class="rbt-sticky-placeholder"></div>
			<div class="rbt-header-wrapper header-space-betwween header-transparent header-sticky">
				<div class="container-fluid">
					<div class="mainbar-row rbt-navigation-start align-items-center">
						<div class="header-left rbt-header-content">
							<div class="header-info">
								<div class="logo">
									<a href="index.html"> <img src="<%= request.getContextPath() %>/assets/images/logo/fitanywherelogo.png"
											alt="Education Logo Images">
									</a>
								</div>
							</div>
						</div>
						<div class="rbt-main-navigation d-none d-xl-block">
							<nav class="mainmenu-nav">
								<ul class="mainmenu">
									<li class="with-megamenu has-menu-child-item position-static mainmenu-sub">
										<a href="#">TDEE / FFMI計算公式
											<!-- <i class="feather-chevron-down"></i> -->
										</a>

									</li>

									<li class="with-megamenu has-menu-child-item mainmenu-sub">
										<a href="./g2-blog-list.html">討論區
											<!-- <i class="feather-chevron-down"></i> -->
										</a> <!-- Start Mega Menu  --> <!-- End Mega Menu  -->
									</li>

									<li class="has-dropdown has-menu-child-item mainmenu-sub">
										<a href="./student-dashboard.html">會員中心
											<!-- <i class="feather-chevron-down"></i> -->
										</a> <!-- <ul class="submenu">
                                            <li class="has-dropdown"><a href="#">Instructor Dashboard</a>
                     
                                            </li>
                                            <li class="has-dropdown"><a href="#">Student Dashboard</a>
    
                                            </li>
                                        </ul> -->
									</li>

									<li class="with-megamenu has-menu-child-item position-static mainmenu-sub">
										<a href="./g2-02-course-school.html">線上課程<i
												class="feather-chevron-down"></i></a>



									</li>

									<!-- <li class="with-megamenu has-menu-child-item position-static">
                                        <a href="#">Elements <i class="feather-chevron-down"></i></a>
                                        
                                        
                                        
                                    </li> -->
									<li><a href=""><img src="./<%= request.getContextPath() %>/assets/images/bell.png" alt=""></a></li>
									<li><a href="./g2-cart.html"><img src="./<%= request.getContextPath() %>/assets/images/cart.png"
												alt=""></a>
									</li>
									<li><a href=""><img src="./<%= request.getContextPath() %>/assets/images/mail.png" alt=""></a></li>
									<li class="with-megamenu has-menu-child-item position-static mainmenu-sub">
										<a href="./g2-register.html">登入 / 註冊
											<!-- <i class="feather-chevron-down"></i> -->
										</a>



									</li>

								</ul>
							</nav>
						</div>
						<div class="header-right">
							<div class="rbt-btn-wrapper d-none d-xl-block">
								<!-- <a class="rbt-btn rbt-marquee-btn marquee-auto btn-border-gradient radius-round btn-sm hover-transform-none" href="https://themeforest.net/checkout/from_item/42846507?license=regular">
                                    <span data-text="Purchase Now">Purchase Now</span>
                                </a> -->
							</div>
							<!-- Start Mobile-Menu-Bar -->
							<div class="mobile-menu-bar d-block d-xl-none">
								<div class="hamberger">
									<button class="hamberger-button rbt-round-btn">
										<i class="feather-menu"></i>
									</button>
								</div>
							</div>
							<!-- Start Mobile-Menu-Bar -->
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- End Header Area  -->
		<!-- Mobile Menu Section -->
		<div class="popup-mobile-menu">
			<div class="inner-wrapper">
				<div class="inner-top">
					<div class="content">
						<div class="logo">
							<a href="index.html"> <img src="<%= request.getContextPath() %>/assets/images/logo/logo.png"
									alt="Education Logo Images">
							</a>
						</div>
						<div class="rbt-btn-close">
							<button class="close-button rbt-round-btn">
								<i class="feather-x"></i>
							</button>
						</div>
					</div>
					<p class="description">Histudy is a education website template.
						You can customize all.</p>
					<ul class="navbar-top-left rbt-information-list justify-content-start">
						<li><a href="mailto:hello@example.com"><i class="feather-mail"></i>example@gmail.com</a></li>
						<li><a href="#"><i class="feather-phone"></i>(302)
								555-0107</a></li>
					</ul>
				</div>

				<nav class="mainmenu-nav">
					<ul class="mainmenu">
						<li class="with-megamenu has-menu-child-item position-static">
							<a href="#">Home <i class="feather-chevron-down"></i></a>
							<!-- Start Mega Menu  -->
							<div class="rbt-megamenu menu-skin-dark">
								<div class="wrapper">
									<div
										class="row row--15 home-plesentation-wrapper single-dropdown-menu-presentation">

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="01-main-demo.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h1.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="01-main-demo.html">Home Demo <span
																	class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="12-marketplace.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h12.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="12-marketplace.html">Marketplace
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->
										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="04-kindergarten.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h4.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="04-kindergarten.html">kindergarten
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->
										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="13-university-classic.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h13.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="13-university-classic.html">University
																Classic <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span>
															</a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="14-home-elegant.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h14.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="14-home-elegant.html">Home Elegant
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="09-gym-coaching.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h9.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="09-gym-coaching.html">Gym Coaching
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="03-online-school.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h3.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="03-online-school.html">Online
																School <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="06-university-status.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h6.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="06-university-status.html">University
																Status
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span>
															</a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="15-home-technology.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h15.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="15-home-technology.html">Home
																Technology <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="07-instructor-portfolio.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h7.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="07-instructor-portfolio.html">Instructor
																Portfolio <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span>
															</a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="08-language-academy.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h8.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="08-language-academy.html">Language
																Academy <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="11-single-course.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h11.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="11-single-course.html">Single
																Course <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="10-online-course.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h10.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="10-online-course.html">Online
																Course <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="05-classic-lms.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h5.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="05-classic-lms.html">Classic Lms
																<span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="02-course-school.html"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/h2.jpg"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="02-course-school.html">Course
																School <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item coming-soon">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="#"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/coming-soon-1.png"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="#">Coming Soon <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item coming-soon">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="#"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/coming-soon-2.png"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="#">Coming Soon 2 <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->

										<!-- Start Single Demo  -->
										<div
											class="col-lg-12 col-xl-2 col-xxl-2 col-md-12 col-sm-12 col-12 single-mega-item coming-soon">
											<div class="demo-single">
												<div class="inner">
													<div class="thumbnail">
														<a href="#"><img
																src="<%= request.getContextPath() %>/assets/images/splash/demo/coming-soon-3.png"
																alt="Demo Images"></a>
													</div>
													<div class="content">
														<h4 class="title">
															<a href="#">Coming Soon 3 <span class="btn-icon"><i
																		class="feather-arrow-right"></i></span></a>
														</h4>
													</div>
												</div>
											</div>
										</div>
										<!-- End Single Demo  -->
									</div>

									<div class="load-demo-btn text-center">
										<a class="rbt-btn-link color-white" href="#">Scroll to view
											more <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
												<path fill-rule="evenodd"
													d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z" />
											</svg>
										</a>
									</div>
								</div>
							</div> <!-- End Mega Menu  -->
						</li>

						<li class="with-megamenu has-menu-child-item"><a href="#">Courses
								<i class="feather-chevron-down"></i>
							</a> <!-- Start Mega Menu  -->
							<div class="rbt-megamenu grid-item-2">
								<div class="wrapper">
									<div class="row">
										<div class="col-lg-12">
											<div class="mega-top-banner">
												<div class="content">
													<h4 class="title">Developer hub</h4>
													<p class="description">Start building fast, with
														code
														samples, key resources and more.</p>
												</div>
											</div>
										</div>
									</div>
									<div class="row row--15">
										<div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
											<h3 class="rbt-short-title">Course Layout</h3>
											<ul class="mega-menu-item">
												<li><a href="course-filter-one-toggle.html">Filter
														One Toggle</a></li>
												<li><a href="course-filter-one-open.html">Filter One
														Open</a></li>
												<li><a href="course-filter-two-toggle.html">Filter
														Two Toggle</a></li>
												<li><a href="course-filter-two-open.html">Filter Two
														Open</a></li>
												<li><a href="course-with-tab.html">Course With Tab</a>
												</li>
												<li><a href="course-with-tab-two.html">Course With
														Tab Two</a></li>
												<li><a href="course-card-2.html">Course Card Two</a>
												</li>
											</ul>
										</div>
										<div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
											<h3 class="rbt-short-title">Course Layout</h3>
											<ul class="mega-menu-item">
												<li><a href="course-card-3.html">Course Card Three</a>
												</li>
												<li><a href="course-masonry.html">Course Masonry</a>
												</li>
												<li><a href="course-with-sidebar.html">Course With
														Sidebar</a></li>
												<li><a href="course-details.html">Course Details</a>
												</li>
												<li><a href="course-details-2.html">Course Details
														Two</a></li>
												<li><a href="lesson.html">Course Lesson <span
															class="rbt-badge-card">New</span></a></li>
												<li><a href="create-course.html">Create Course <span
															class="rbt-badge-card">New</span></a></li>
											</ul>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<ul class="nav-quick-access">
												<li><a href="#"><i class="feather-folder-minus"></i>
														Quick Start Guide</a></li>
												<li><a href="#"><i class="feather-folder-minus"></i>
														For Open Source</a></li>
												<li><a href="#"><i class="feather-folder-minus"></i>
														API Status</a></li>
												<li><a href="#"><i class="feather-folder-minus"></i>
														Support</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div> <!-- End Mega Menu  -->
						</li>

						<li class="has-dropdown has-menu-child-item"><a href="#">Dashboard
								<i class="feather-chevron-down"></i>
							</a>
							<ul class="submenu">
								<li class="has-dropdown"><a href="#">Instructor
										Dashboard</a>
									<ul class="submenu">
										<li><a href="instructor-dashboard.html">Dashboard</a></li>
										<li><a href="instructor-profile.html">Profile</a></li>
										<li><a href="instructor-enrolled-courses.html">Enrolled
												Courses</a></li>
										<li><a href="instructor-wishlist.html">Wishlist</a></li>
										<li><a href="instructor-reviews.html">Reviews</a></li>
										<li><a href="instructor-my-quiz-attempts.html">My Quiz
												Attempts</a></li>
										<li><a href="instructor-order-history.html">Order
												History</a></li>
										<li><a href="instructor-course.html">My Course</a></li>
										<li><a href="instructor-announcements.html">Announcements</a>
										</li>
										<li><a href="instructor-quiz-attempts.html">Quiz
												Attempts</a></li>
										<li><a href="instructor-assignments.html">Assignments</a></li>
										<li><a href="instructor-settings.html">Settings</a></li>
									</ul>
								</li>
								<li class="has-dropdown"><a href="#">Student Dashboard</a>
									<ul class="submenu">
										<li><a href="student-dashboard.html">Dashboard</a></li>
										<li><a href="student-profile.html">Profile</a></li>
										<li><a href="student-enrolled-courses.html">Enrolled
												Courses</a></li>
										<li><a href="student-wishlist.html">Wishlist</a></li>
										<li><a href="student-reviews.html">Reviews</a></li>
										<li><a href="student-my-quiz-attempts.html">My Quiz
												Attempts</a></li>
										<li><a href="student-order-history.html">Order History</a></li>
										<li><a href="student-settings.html">Settings</a></li>
									</ul>
								</li>
							</ul>
						</li>

						<li class="with-megamenu has-menu-child-item position-static">
							<a href="#">Pages <i class="feather-chevron-down"></i></a>
							<!-- Start Mega Menu  -->
							<div class="rbt-megamenu grid-item-4">
								<div class="wrapper">
									<div class="row row--15">
										<div class="col-lg-12 col-xl-3 col-xxl-3 single-mega-item">
											<h3 class="rbt-short-title">Get Started</h3>
											<ul class="mega-menu-item">
												<li><a href="about-us-01.html">About Us</a></li>
												<li><a href="about-us-02.html">About Us 02</a></li>
												<li><a href="event-grid.html">Event Grid</a></li>
												<li><a href="event-list.html">Event List</a></li>
												<li><a href="event-sidebar.html">Event Sidebar</a></li>
												<li><a href="event-details.html">Event Details</a></li>
												<li><a href="academy-gallery.html">Academy Gallery</a>
												</li>
												<li><a href="admission-guide.html">Admission Guide</a>
												</li>
											</ul>
										</div>

										<div class="col-lg-12 col-xl-3 col-xxl-3 single-mega-item">
											<h3 class="rbt-short-title">Get Started</h3>
											<ul class="mega-menu-item">
												<li><a href="profile.html">Profile</a></li>
												<li><a href="contact.html">Contact Us</a></li>
												<li><a href="become-a-teacher.html">Become a Teacher</a>
												</li>
												<li><a href="instructor.html">Instructor</a></li>
												<li><a href="faqs.html">FAQS</a></li>
												<li><a href="privacy-policy.html">Privacy Policy</a>
												</li>
												<li><a href="404.html">404 Page</a></li>
												<li><a href="maintenance.html">Maintenance</a></li>
											</ul>
										</div>

										<div class="col-lg-12 col-xl-3 col-xxl-3 single-mega-item">
											<h3 class="rbt-short-title">Shop Pages</h3>
											<ul class="mega-menu-item">
												<li><a href="shop.html">Shop <span class="rbt-badge-card">Sale
															Anything</span></a></li>
												<li><a href="single-product.html">Single Product</a>
												</li>
												<li><a href="cart.html">Cart Page</a></li>
												<li><a href="checkout.html">Checkout</a></li>
												<li><a href="wishlist.html">Wishlist Page</a></li>
												<li><a href="my-account.html">My Acount</a></li>
												<li><a href="login.html">Login & Register</a></li>
												<li><a href="subscription.html">Subscription</a></li>
											</ul>
										</div>
										<div class="col-lg-12 col-xl-3 col-xxl-3 single-mega-item">
											<div class="mega-category-item">
												<!-- Start Single Category  -->
												<div class="nav-category-item">
													<div class="thumbnail">
														<div class="image">
															<img src="<%= request.getContextPath() %>/assets/images/course/category-2.png"
																alt="Course images">
														</div>
														<a href="course-filter-one-toggle.html">
															<span>Online
																Education</span> <i class="feather-chevron-right"></i>
														</a>
													</div>
												</div>
												<!-- End Single Category  -->

												<!-- Start Single Category  -->
												<div class="nav-category-item">
													<div class="thumbnail">
														<div class="image">
															<img src="<%= request.getContextPath() %>/assets/images/course/category-1.png"
																alt="Course images">
														</div>
														<a href="course-filter-one-toggle.html">
															<span>Language
																Club</span> <i class="feather-chevron-right"></i>
														</a>
													</div>
												</div>
												<!-- End Single Category  -->

												<!-- Start Single Category  -->
												<div class="nav-category-item">
													<div class="thumbnail">
														<div class="image">
															<img src="<%= request.getContextPath() %>/assets/images/course/category-4.png"
																alt="Course images">
														</div>
														<a href="course-filter-one-toggle.html">
															<span>University
																Status</span> <i class="feather-chevron-right"></i>
														</a>
													</div>
												</div>
												<!-- End Single Category  -->

												<!-- Start Single Category  -->
												<div class="nav-category-item">
													<div class="thumbnail">
														<a href="course-filter-one-toggle.html">
															<span>Course
																School</span> <i class="feather-chevron-right"></i>
														</a>
													</div>
												</div>
												<!-- End Single Category  -->

												<!-- Start Single Category  -->
												<div class="nav-category-item">
													<div class="thumbnail">
														<div class="image">
															<img src="<%= request.getContextPath() %>/assets/images/course/category-9.png"
																alt="Course images">
														</div>
														<a href="course-filter-one-toggle.html">
															<span>Academy</span>
															<i class="feather-chevron-right"></i>
														</a>
													</div>
												</div>
												<!-- End Single Category  -->

											</div>
										</div>
									</div>
								</div>
							</div> <!-- End Mega Menu  -->
						</li>

						<li class="with-megamenu has-menu-child-item position-static">
							<a href="#">Elements <i class="feather-chevron-down"></i></a>
							<!-- Start Mega Menu  -->
							<div class="rbt-megamenu grid-item-3">
								<div class="wrapper">
									<div class="row row--15 single-dropdown-menu-presentation">
										<div class="col-lg-4 col-xxl-4 single-mega-item">
											<ul class="mega-menu-item">
												<li><a href="style-guide.html">Style Guide <span
															class="rbt-badge-card">Hot</span></a></li>
												<li><a href="accordion.html">Accordion</a></li>
												<li><a href="advancetab.html">Advance Tab</a></li>
												<li><a href="brand.html">Brand</a></li>
												<li><a href="button.html">Button</a></li>
												<li><a href="badge.html">Badge</a></li>
												<li><a href="card.html">Card</a></li>
												<li><a href="call-to-action.html">Call To Action</a>
												</li>
											</ul>
										</div>

										<div class="col-lg-4 col-xxl-4 single-mega-item">
											<ul class="mega-menu-item">
												<li><a href="counterup.html">Counter</a></li>
												<li><a href="category.html">Categories</a></li>
												<li><a href="header.html">Header Style</a></li>
												<li><a href="newsletter.html">Newsletter</a></li>
												<li><a href="team.html">Team</a></li>
												<li><a href="social.html">Social</a></li>
												<li><a href="list-style.html">List Style</a></li>
												<li><a href="gallery.html">Gallery</a></li>
											</ul>
										</div>

										<div class="col-lg-4 col-xxl-4 single-mega-item">
											<ul class="mega-menu-item">
												<li><a href="pricing.html">Pricing</a></li>
												<li><a href="progressbar.html">Progressbar</a></li>
												<li><a href="testimonial.html">Testimonial</a></li>
												<li><a href="service.html">Service</a></li>
												<li><a href="split.html">Split Area</a></li>
												<li><a href="search.html">Search Style</a></li>
												<li><a href="instagram.html">Instagram Style</a></li>
												<li><a href="#">& More Coming</a></li>

											</ul>
										</div>

									</div>
									<div class="row">
										<div class="col-lg-12">
											<div class="btn-wrapper">
												<a class="rbt-btn btn-gradient hover-icon-reverse square btn-xl w-100 text-center mt--30 hover-transform-none"
													href="#"> <span class="icon-reverse-wrapper"> <span
															class="btn-text">Visit Histudy
															Template</span> <span class="btn-icon"><i
																class="feather-arrow-right"></i></span>
														<span class="btn-icon"><i
																class="feather-arrow-right"></i></span>
													</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div> <!-- End Mega Menu  -->
						</li>

						<li class="with-megamenu has-menu-child-item position-static">
							<a href="#">Blog <i class="feather-chevron-down"></i></a>
							<!-- Start Mega Menu  -->
							<div class="rbt-megamenu grid-item-3">
								<div class="wrapper">
									<div class="row row--15">
										<div class="col-lg-12 col-xl-4 col-xxl-4 single-mega-item">
											<h3 class="rbt-short-title">Blog Styles</h3>
											<ul class="mega-menu-item">
												<li><a href="blog-list.html">Blog List</a></li>
												<li><a href="blog.html">Blog Grid</a></li>
												<li><a href="blog-grid-minimal.html">Blog Grid
														Minimal</a></li>
												<li><a href="blog-with-sidebar.html">Blog With
														Sidebar</a></li>
												<li><a href="blog-details.html">Blog Details</a></li>
												<li><a href="post-format-standard.html">Post Format
														Standard</a></li>
												<li><a href="post-format-gallery.html">Post Format
														Gallery</a></li>
											</ul>
										</div>

										<div class="col-lg-12 col-xl-4 col-xxl-4 single-mega-item">
											<h3 class="rbt-short-title">Get Started</h3>
											<ul class="mega-menu-item">
												<li><a href="post-format-quote.html">Post Format
														Quote</a></li>
												<li><a href="post-format-audio.html">Post Format
														Audio</a></li>
												<li><a href="post-format-video.html">Post Format
														Video</a></li>
												<li><a href="#">Media Under Title <span
															class="rbt-badge-card">Coming</span></a>
												</li>
												<li><a href="#">Sticky Sidebar <span
															class="rbt-badge-card">Coming</span></a>
												</li>
												<li><a href="#">Auto Masonry <span
															class="rbt-badge-card">Coming</span></a>
												</li>
												<li><a href="#">Meta Overlaid <span
															class="rbt-badge-card">Coming</span></a>
												</li>
											</ul>
										</div>

										<div class="col-lg-12 col-xl-4 col-xxl-4 single-mega-item">
											<div class="rbt-ads-wrapper">
												<a class="d-block" href="#"><img
														src="<%= request.getContextPath() %>/assets/images/service/mobile-cat.jpg"
														alt="Education Images"></a>
											</div>
										</div>
									</div>
								</div>
							</div> <!-- End Mega Menu  -->
						</li>
					</ul>
				</nav>

				<div class="mobile-menu-bottom">
					<div class="rbt-btn-wrapper mb--20">
						<a class="rbt-btn btn-border-gradient radius-round btn-sm hover-transform-none w-100 justify-content-center text-center"
							href="#"> <span>Enroll Now</span>
						</a>
					</div>

					<div class="social-share-wrapper">
						<span class="rbt-short-title d-block">Find With Us</span>
						<ul class="social-icon social-default transparent-with-border justify-content-start mt--20">
							<li><a href="https://www.facebook.com/"> <i class="feather-facebook"></i>
								</a></li>
							<li><a href="https://www.twitter.com"> <i class="feather-twitter"></i>
								</a></li>
							<li><a href="https://www.instagram.com/"> <i class="feather-instagram"></i>
								</a></li>
							<li><a href="https://www.linkdin.com/"> <i class="feather-linkedin"></i>
								</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<!-- Start Side Vav -->
		<div class="rbt-cart-side-menu">
			<div class="inner-wrapper">
				<div class="inner-top">
					<div class="content">
						<div class="title">
							<h4 class="title mb--0">Your shopping cart</h4>
						</div>
						<div class="rbt-btn-close" id="btn_sideNavClose">
							<button class="minicart-close-button rbt-round-btn">
								<i class="feather-x"></i>
							</button>
						</div>
					</div>
				</div>
				<nav class="side-nav w-100">
					<ul class="rbt-minicart-wrapper">
						<li class="minicart-item">
							<div class="thumbnail">
								<a href="#"> <img src="<%= request.getContextPath() %>/assets/images/product/1.jpg" alt="Product Images">
								</a>
							</div>
							<div class="product-content">
								<h6 class="title">
									<a href="single-product.html">Miracle Morning</a>
								</h6>

								<span class="quantity">1 * <span class="price">$22</span></span>
							</div>
							<div class="close-btn">
								<button class="rbt-round-btn">
									<i class="feather-x"></i>
								</button>
							</div>
						</li>

						<li class="minicart-item">
							<div class="thumbnail">
								<a href="#"> <img src="<%= request.getContextPath() %>/assets/images/product/7.jpg" alt="Product Images">
								</a>
							</div>
							<div class="product-content">
								<h6 class="title">
									<a href="single-product.html">Happy Strong</a>
								</h6>

								<span class="quantity">1 * <span class="price">$30</span></span>
							</div>
							<div class="close-btn">
								<button class="rbt-round-btn">
									<i class="feather-x"></i>
								</button>
							</div>
						</li>

						<li class="minicart-item">
							<div class="thumbnail">
								<a href="#"> <img src="<%= request.getContextPath() %>/assets/images/product/3.jpg" alt="Product Images">
								</a>
							</div>
							<div class="product-content">
								<h6 class="title">
									<a href="single-product.html">Rich Dad Poor Dad</a>
								</h6>

								<span class="quantity">1 * <span class="price">$50</span></span>
							</div>
							<div class="close-btn">
								<button class="rbt-round-btn">
									<i class="feather-x"></i>
								</button>
							</div>
						</li>

						<li class="minicart-item">
							<div class="thumbnail">
								<a href="#"> <img src="<%= request.getContextPath() %>/assets/images/product/4.jpg" alt="Product Images">
								</a>
							</div>
							<div class="product-content">
								<h6 class="title">
									<a href="single-product.html">Momentum Theorem</a>
								</h6>

								<span class="quantity">1 * <span class="price">$50</span></span>
							</div>
							<div class="close-btn">
								<button class="rbt-round-btn">
									<i class="feather-x"></i>
								</button>
							</div>
						</li>
					</ul>
				</nav>

				<div class="rbt-minicart-footer">
					<hr class="mb--0">
					<div class="rbt-cart-subttotal">
						<p class="subtotal">
							<strong>Subtotal:</strong>
						</p>
						<p class="price">$121</p>
					</div>
					<hr class="mb--0">
					<div class="rbt-minicart-bottom mt--20">
						<div class="view-cart-btn">
							<a class="rbt-btn btn-border icon-hover w-100 text-center" href="#"> <span
									class="btn-text">View Cart</span> <span class="btn-icon"><i
										class="feather-arrow-right"></i></span>
							</a>
						</div>
						<div class="checkout-btn mt--20">
							<a class="rbt-btn btn-gradient icon-hover w-100 text-center" href="#"> <span
									class="btn-text">Checkout</span> <span class="btn-icon"><i
										class="feather-arrow-right"></i></span>
							</a>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- End Side Vav -->
		<a class="close_side_menu" href="javascript:void(0);"></a>

		<!-- Start breadcrumb Area -->
		<div class="rbt-breadcrumb-default ptb--100 ptb_md--50 ptb_sm--30 bg-gradient-1">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb-inner text-center">
							<h2 class="title">登入</h2>
							<ul class="page-list">
								<li class="rbt-breadcrumb-item"><a href="index.html">Home</a></li>
								<li>
									<div class="icon-right">
										<i class="feather-chevron-right"></i>
									</div>
								</li>
								<li class="rbt-breadcrumb-item active">Login & Register</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumb Area -->

		<div class="rbt-elements-area bg-color-white rbt-section-gap">
			<div class="container">
				<div class="row gy-5 row--30">


					<div class="col-lg-6">
						<div class="rbt-contact-form contact-form-style-1 max-width-auto">
							<h3 class="title">登入</h3>
							<!-- 暫不實現google登入 -->
							<!-- <a href="#"><div class="third-login"> <img src="https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png" alt=""> 使用Google登入</div></a>
                            <hr class="hr"> -->

							<form class="max-width-auto" method="post" action="<%= request.getContextPath() %>/user_controller">
								<input type="hidden" name="requestType" value="userLogin">
								<div class="form-group">
									<input name="u_email" type="email" required />
									<label>帳號(請輸入E-Mail)</label>
									<span class="focus-border"></span>
								</div>
								<div class="form-group">
									<input name="u_password" type="password" required>
									<label>請輸入密碼</label>
									<span class="focus-border"></span>
								</div>

								<div class="row mb--30">
									<div class="col-lg-6">
										<div class="rbt-checkbox">
											<input type="checkbox" id="rememberme" name="rememberme">
											<label for="rememberme">記住我</label>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="rbt-lost-password text-end">
											<a class="rbt-btn-link" href="#">忘記密碼?</a>
										</div>
									</div>
								</div>

								<div class="form-submit-group">
									<button type="submit" class="rbt-btn btn-md btn-gradient hover-icon-reverse w-100">
										<span class="icon-reverse-wrapper"> <span class="btn-text">登入</span> <span
												class="btn-icon"><i class="feather-arrow-right"></i></span> <span
												class="btn-icon"><i class="feather-arrow-right"></i></span>
										</span>
									</button>
								</div>
							</form>
							<div class="margin">
								<span class="margin-right-10px">還沒有建立新帳號?</span><a
									href="<%= request.getContextPath() %>/user/user_register.html">註冊</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!--     
        <div class="rbt-newsletter-area bg-gradient-6 ptb--50">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="inner">
                            <div class="section-title text-center text-lg-start">
                                <h4 class="title"><strong>Subscribe</strong> <br /> <span class="w-400">Our
                                        Newsletter</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-12 col-12 text-start text-sm-end">
                        <form action="#" class="newsletter-form-1 me-0">
                            <input type="email" placeholder="Enter Your E-Email">
                            <button type="submit" class="rbt-btn btn-md btn-gradient hover-icon-reverse">
                                <span class="icon-reverse-wrapper">
                                    <span class="btn-text">Subscribe</span>
                                    <span class="btn-icon"><i class="feather-arrow-right"></i></span>
                                    <span class="btn-icon"><i class="feather-arrow-right"></i></span>
                                </span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        -->



		<!-- Start Footer aera -->

		<!-- End Footer aera -->
		<div class="rbt-separator-mid">
			<div class="container">
				<hr class="rbt-separator m-0">
			</div>
		</div>
		<!-- Start Copyright Area  -->

		<div class="copyright-area copyright-style-1 ptb--20 bg-color-darker g2_footer">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<p class="rbt-link-hover text-center color-white-off">Fit
							AnyWhere©</p>
					</div>
				</div>
			</div>
		</div>

		<!-- End Copyright Area  -->
		<div class="rbt-progress-parent">
			<svg class="rbt-back-circle svg-inner" width="100%" height="100%" viewBox="-1 -1 102 102">
				<path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
			</svg>
		</div>

		<!-- JS
    ============================================ -->
		<!-- Modernizer JS -->
		<script src="<%= request.getContextPath() %>/assets/js/vendor/modernizr.min.js"></script>
		<!-- jQuery JS -->
		<script src="<%= request.getContextPath() %>/assets/js/vendor/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap.min.js"></script>
		<!-- sal.js -->
		<script src="<%= request.getContextPath() %>/assets/js/vendor/sal.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/swiper.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/magnify.min.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-appear.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/odometer.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/backtotop.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/isotop.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/imageloaded.js"></script>

		<script src="<%= request.getContextPath() %>/assets/js/vendor/wow.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/waypoint.min.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/easypie.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/text-type.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-one-page-nav.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/bootstrap-select.min.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/jquery-ui.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/magnify-popup.min.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/paralax-scroll.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/paralax.min.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/countdown.js"></script>
		<script src="<%= request.getContextPath() %>/assets/js/vendor/plyr.js"></script>
		<!-- Main JS -->
		<script src="<%= request.getContextPath() %>/assets/js/main.js"></script>

		<!-- ======================================== -->
		<!-- Eugen -->

		<!-- ========================= -->
		<!-- 會員輸入email時預查是否存在此會員 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script>
			$(document).ready(function () {
				$('input[name="u_email"]').on('blur', function () {
					var email = $(this).val();
					if (email.trim() !== '') {
						if (validateEmail(email)) {
							// 驗證通過，發送AJAX請求
							$.ajax({
								type: 'POST',
								url: '<%= request.getContextPath() %>/user_controller',
								data: {
									requestType: 'userCheck',
									u_email: email
								},
								success: function (response) {
									if (response === '0') {
										// 會員存在，無須動作
										console.log('會員存在');
									} else if (response === '1') {
										// 會員不存在，提示用戶重新輸入
										console.log('會員不存在');
										alert('此電子信箱並未註冊, 請重新輸入已註冊的會員信箱或註冊本站帳號!');
										$('input[name="u_email"]').val('');
									}
								}
							});
						} else {
							// 郵箱格式不正確
							alert('請輸入正確的電子信箱!');
							$('input[name="u_email"]').val('');
						}
					}
				});

				function validateEmail(email) {
					var re = /\S+@\S+\.\S+/;
					return re.test(email);
				}
			});
		</script>		

		<!-- ======================================== -->

		<!-- 若是註冊完跳轉過來 session會觸發通知 -->
		<%@ page import="javax.servlet.http.HttpSession" %>
			<% if (session.getAttribute("registrationSuccess") !=null) { session.removeAttribute("registrationSuccess");
				// 移除屬性，防止再次觸發 %>
				<script>
					document.addEventListener("DOMContentLoaded", function () {
						alert('註冊成功，請登入');
					});
				</script>
				<% } %>


					<!-- ======================================== -->


	</body>

	</html>