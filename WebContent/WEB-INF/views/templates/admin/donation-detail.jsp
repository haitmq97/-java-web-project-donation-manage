<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="me.haitmq.spring.mvc.crud.content_path.ViewConstants"%>
<%@ page import="me.haitmq.spring.mvc.crud.utils.JSPDataFormat"%>
<%@ page import="me.haitmq.spring.mvc.crud.utils.Time"%>
<%@ page import="me.haitmq.spring.mvc.crud.entity.status.DonationStatus"%>
<%@ page
	import="me.haitmq.spring.mvc.crud.entity.status.UserDonationStatus"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<title>Donation website &mdash; Website Donation</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />

<link rel="icon" type="image/x-icon"
	href="<c:url value='/static/common/assets/img/icon/heart.ico' />">

<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/custom-bs.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/jquery.fancybox.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/bootstrap-select.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/fonts/icomoon/style.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/fonts/line-icons/style.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/owl.carousel.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/animate.min.css' />">

<script src="<c:url value='/static/user/assets/js/jquery.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/bootstrap.bundle.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/isotope.pkgd.min.js' />"></script>
<script src="<c:url value='/static/user/assets/js/stickyfill.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/jquery.fancybox.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/jquery.easing.1.3.js' />"></script>

<script
	src="<c:url value='/static/user/assets/js/jquery.waypoints.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/jquery.animateNumber.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/owl.carousel.min.js' />"></script>
<script
	src="<c:url value='/static/user/assets/js/bootstrap-select.min.js' />"></script>
<script src="<c:url value='/static/user/assets/js/custom.js' />"></script>

<script
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js' />"
	crossorigin="anonymous"></script>
<script
	src="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' />"
	crossorigin="anonymous"></script>
<script
	src="<c:url value='https://unpkg.com/sweetalert/dist/sweetalert.min.js' />"></script>

<link rel="stylesheet"
	href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css'/>"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- customer style -->

<link rel="stylesheet"
	href="<c:url value='/static/common/assets/css/style.css'/>" />

<!-- customer js -->

<script src="<c:url value='/static/common/assets/js/script.js' />"></script>
<script
	src="<c:url value='/static/common/assets/js/layout-script.js' />"></script>

</head>
<body>

	<jsp:include page="../common/header-layout.jsp">
		<jsp:param name="includePart" value="headerSection" />
	</jsp:include>

	<section class="site-section content">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-md-7 text-center">
					<h2 class="section-title mb-2">Chi tiết đợt quyên góp</h2>

				</div>

			</div>

			<div class="donation-detail-containter">
				<div class="row">
					<!-- Row 1 -->
					<div class="col-md-6">
						<div class="p-3">
							<div class="">

								<p class="font-weight-bold mb-1 text-align-left">Mã đợt
									quyên góp:</p>

							</div>
							<div class="border rounded bg-light">

								<p class="p-1 m-1">${donation.code}</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Tên đợt
									quyên góp:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${donation.name}</p>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<!-- Row 2 -->
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Tổ chức:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${donation.organization}</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Số điện
									thoại:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${donation.phoneNumber}</p>
							</div>

						</div>
					</div>
				</div>
				<div class="row">
					<!-- Row 2 -->
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Ngày tạo:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${donation.createdDate}</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Trạng thái:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${JSPDataFormat.donationStatusFormat(donation.status)}</p>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<!-- Row 2 -->
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Ngày bắt
									đầu:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${JSPDataFormat.dateFormat(donation.startDate)}</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Ngày kết
									thúc:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${JSPDataFormat.dateFormat(donation.endDate)}</p>
							</div>

						</div>
					</div>
				</div>
				<div class="row">
					<!-- Row 2 -->
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Tổng tiền:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${JSPDataFormat.moneyFormat(donation.money)}</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Số lượng
									lượt quyên góp đã xác nhận:</p>
							</div>
							<div class="border rounded bg-light">
								<p class="p-1 m-1">${donation.donationQuantity}</p>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<!-- Row 5 with full width -->
					<div class="col-md-12">
						<div class="p-3">
							<div class="">
								<p class="font-weight-bold mb-1 text-align-left">Nội dung:</p>
							</div>
							<div class="border rounded bg-light">
								<c:choose>
									<c:when test="${empty donation.description}">
										<p class="font-italic p-1 m-1 text-muted">Không có nội dung gì hiển thị</p>
									</c:when>
									<c:otherwise>
										<p class="p-1 m-1">${donation.description}</p>
									</c:otherwise>
								</c:choose>
								
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="row mt-5">
				<div class="col-12">

					<div class="main-content">
						<div>
							<h3 class="text-align-center">Danh sách các lượt quyên góp</h3>
						</div>

						<div>

							<input type="hidden" id="userDonation-total"
								value="${userDonations.totalElements}" />
							<p id="table-script"
								class="mt-4 text-align-center  font-italic text-muted">Hiện
								đợt quyên góp này chưa có lượt quyên góp nào</p>
						</div>

						<div class="table-container" id="list-container">

							<div
								class="sp-tool d-flex flex-column flex-sm-row justify-content-between mt-3">
								<div class="page-selector">


									<label for="size">Rows per page:</label> <select id="pageSize"
										name="size" class="entries-select rounded form-control">
										<option value="3" ${userDonations.size == 3 ? 'selected' : ''}>3</option>
										<option value="4" ${userDonations.size == 4 ? 'selected' : ''}>4</option>
										<option value="5" ${userDonations.size == 5 ? 'selected' : ''}>5</option>
										<option value="10"
											${userDonations.size == 10 ? 'selected' : ''}>10</option>
										<option value="15"
											${userDonations.size == 15 ? 'selected' : ''}>15</option>
										<option value="20"
											${userDonations.size == 20 ? 'selected' : ''}>20</option>

									</select>

								</div>
								<div class="search-box">
									<label for="searching-input">Search:</label> <input type="text"
										name="searching-input" id="searchingValue"
										class="searching-input rounded p-2 form-control"
										placeholder="by Code or by status ..."
										value="${searchingValue}" />
								</div>

							</div>

							<div class="m-content list" id="data-list">
								<div class="table-div">
									<table class="table table-striped table-content">
										<thead class="tb-head-title bg-secondary">
											<tr>
												<th scope="col" class="th-custom col-2"><p>Ngày
														quyên góp</p></th>
												<th scope="col" class="th-custom col-2"><p>Số tiền</p></th>
												<th scope="col" class="th-custom "><p>Ghi chú</p></th>
												<th scope="col" class="th-custom col-2"><p>Username</p></th>
												<th scope="col" class="th-custom col-2 col-md-3"><p>Email</p></th>
												<th scope="col" class="th-custom col-2 col-md-3"><p>Trạng
														thái</p></th>
												<th scope="col" class="th-custom col-2"><p>Hành
														động</p></th>
											</tr>
										</thead>

										<tbody id="scrollableRows">
											<c:forEach var="tempUserDonation"
												items="${userDonations.content}">


												<c:url var="confirmLink"
													value="/admin/update_user_donations">
													<c:param name="id" value="${tempUserDonation.id}" />
													<c:param name="status"
														value="${UserDonationStatus.CONFIRMED}" />
												</c:url>

												<c:url var="cancelLink" value="/admin/update_user_donations">
													<c:param name="id" value="${tempUserDonation.id}" />
													<c:param name="status"
														value="${UserDonationStatus.CANCELED}" />
												</c:url>

												<tr>
													<td><p>${tempUserDonation.createdDate}</p></td>
													<td><p>${JSPDataFormat.moneyFormat(tempUserDonation.money)}</p></td>
													<td><p>${tempUserDonation.note}</p></td>
													<td><p class="font-weight-bold">${tempUserDonation.user.userName}</p></td>
													<td><p class="font-weight-bold">${tempUserDonation.user.email}</p></td>
													<td><p class="color-text">${JSPDataFormat.userDonationStatusFormat(tempUserDonation.status)}</p></td>

													<td class="action-c">
														<c:if
															test="${tempUserDonation.status == UserDonationStatus.WAITING}">
															<button
																class="btn btn-success donation-btn donation-update-btn"
																title="Chi tiết"
																onclick="window.location.href='${confirmLink}'">
																<span class="content-btn-text">Xác nhận</span>
															</button>

															<button class="btn btn-danger donation-btn"
																title="Chi tiết"
																onclick="openModalId('${tempUserDonation.id}','#user-donation-cancel')">
																<span class="content-btn-text">Hủy</span>
															</button>
														</c:if>
													</td>
												</tr>

											</c:forEach>

										</tbody>
									</table>
									<script>
										changeColorText();
									</script>

								</div>
								<div>
									<c:if test="${userDonations.totalElements != 0}">
										<p class="font-weight-light font-italic text-muted">Showing
											${userDonations.number*userDonations.size +1} to
											${userDonations.number*userDonations.size +userDonations.numberOfElements}
											of ${userDonations.totalElements} entries</p>

										<div>
											<div>

												<input id="totalPages" type="hidden"
													value="${userDonations.totalPages}" /> 
												<input id="currentPage" type="hidden" name="currentPage"
													value="${userDonations.pageable.pageNumber+1}" />

											</div>

											<div id="pagination-container"></div>

										</div>
									</c:if>

									<c:if test="${userDonations.totalElements == 0}">
										<p class="font-weight-light font-italic text-muted">There
											are no entries to show</p>
									</c:if>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</section>

	<div class="overlay-container">
		<div class="row">
			<div id="overlay" onclick="closeAllModal()"></div>

			<jsp:include
				page="../admin/form-modal/user-donation-modal/user-donation-cancel-modal.jsp" />

			<jsp:include
				page="../admin/form-modal/user-donation-modal/user-donation-success-confirm-modal.jsp" />

			<jsp:include
				page="../admin/form-modal/user-donation-modal/user-donation-success-cancel-modal.jsp" />

		</div>

	</div>

	<jsp:include page="../common/footer-layout.jsp">
		<jsp:param name="includePart" value="footerSection" />
	</jsp:include>


	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		crossorigin="anonymous"></script>

	<script src="<c:url value='/static/common/assets/js/form.js' />"></script>

	<script src="<c:url value='/static/common/assets/js/script.js' />"></script>

	<script
		src="<c:url value='/static/common/assets/js/layout-script.js' />"></script>
</body>
</html>