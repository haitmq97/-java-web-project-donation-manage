<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header-sec">
	<c:choose>
		<c:when test="${param.includePart eq 'headerSection'}">
			<!-- Include only the header section -->
			<header class="header header-custom" id="header">
				<div>
					<div class="header-background">
						<div class="header-content">
							<h2>
								<b>Website Quyên góp</b>
							</h2>
							<div class="sub-header-content d-grid col-8"></div>
						</div>
					</div>
					<div class="navbar" id="navbar">

						<ul class="nav-list">
							<li class="nav-item">
								<button class="btn active-b"
									onclick="window.location.href='${pageContext.request.contextPath}/v1/home'">
									<span class="txt-nav-i">Home</span><span class="icon-nav-i"><i
										class="fa fa-home" aria-hidden="true"></i></span>
								</button>
								<%-- 
								
								<button id="manager-btn" class="btn"
									onclick="window.location.href='${pageContext.request.contextPath}/admin/donations'">
									<span class="txt-nav-i">Quản lý</span><span class="icon-nav-i"><i
										class="fa-solid fa-list-check"></i></span>
								</button>
								
								 --%>
								 
								 
								 
								
								<div class="user-l-btn d-inline-block">
									<div class="btn-group" id="manager-btn">
										<button type="button"
											class="btn dropdown-toggle none-outline-btn-custom"
											data-bs-toggle="dropdown" data-bs-display="static"
											aria-expanded="false">
											<span class="txt-nav-i">Quản lý</span><span class="icon-nav-i"><i
										class="fa-solid fa-list-check"></i></span>
										</button>
										<ul
											class="dropdown-menu dropdown-menu-lg-end dropdown-menu-custom">
											<li>
												<button class="dropdown-item" type="button"
													onclick="window.location.href='${pageContext.request.contextPath}/admin/donations'">
													Donations</button>
											</li>
											<li>
												<button class="dropdown-item" type="button"
													onclick="window.location.href='${pageContext.request.contextPath}/admin/users'">
													Users</button>
											</li>
											<li>
												<button class="dropdown-item" type="button"
													onclick="window.location.href='${pageContext.request.contextPath}/admin/userDonations'">
													Donates</button>
											</li>
										</ul>
									</div>
									
								</div>
								
								
								
							</li>

							<li class="nav-item">
								<div class="user-l-btn">
									<div class="btn-group" id="user-btn">
										<button type="button"
											class="btn dropdown-toggle none-outline-btn-custom"
											data-bs-toggle="dropdown" data-bs-display="static"
											aria-expanded="false">
											<span class="txt-nav-i"><i
												class="fa-solid fa-user"></i></span><span class="icon-nav-i"><i
												class="fa-solid fa-user"></i></span>
										</button>
										<ul
											class="dropdown-menu dropdown-menu-lg-end dropdown-menu-custom">
											<li>
												<button class="dropdown-item" type="button"
													onclick="window.location.href='${pageContext.request.contextPath}/user/profile'">
													Profile</button>
											</li>
											<li>
												<button class="dropdown-item" type="button"
													onclick="window.location.href='${pageContext.request.contextPath}/v1/logout'">
													Logout</button>
											</li>
										</ul>
									</div>
									<div class="rs-b" id="rs-b">
										<button class="btn custom-rs-btn"
											onclick="window.location.href='${pageContext.request.contextPath}/v1/register'">
											<span class="txt-nav-i">Đăng ký</span><span
												class="icon-nav-i"><i
												class="fa-solid fa-user-plus"></i></span>
										</button>
										<button class="btn custom-rs-btn" onclick="openPopup('login')">
											<span class="txt-nav-i">Đăng nhập</span><span
												class="icon-nav-i"><i
												class="fa-solid fa-right-to-bracket"></i></span>
										</button>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</header>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>


</div>