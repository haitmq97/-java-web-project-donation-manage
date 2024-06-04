<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
<title>Donation website &mdash; Website Donation</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />
<%-- 
<link rel="stylesheet"
	href="<c:url value='/static/common/assets/css/reset.css'/>" /> --%>

<link rel="shortcut icon" href="ftco-32x32.png">

<link rel="stylesheet"
	href="<c:url value='/static/common/assets/css/content-style.css' />">

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

<!-- MAIN CSS -->
<%-- 
<link rel="stylesheet"
	href="<c:url value='/static/user/assets/css/style.css' />">
 --%>
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

<script
	src="<c:url value='https://code.jquery.com/jquery-3.6.4.min.js'/>"> </script>
<script src="<c:url value='/static/common/assets/js/form.js' />"></script>
<script src="<c:url value='/static/common/assets/js/script.js' />"></script>
<script src="<c:url value='/static/common/assets/js/data-list.js' />"></script>
</head>
<body id="top">
	<div>
		<label for="searchingValue">Searching Value: </label>
		<input type="text" name="searchingValue" id="searchingValue" value="${currentSearchingValue}">
		<label for="page"></label>
		<input type="number" name="page" id="page" value="${currentPage}">
		<label for="size"></label>
		<input type="number" name="size" id="size" value="${currentSize}">
	</div>
	
	<div id="contentTest">
		<div>
		<table class="table table-striped table-content">
			<thead class="tb-head-title">
				<tr>
					<th scope="col" class="th-custom"><p>id</p></th>
					<th scope="col" class="th-custom"><p>Name</p></th>
					<th scope="col" class="th-custom"><p>Code</p></th>
					<th scope="col" class="th-custom"><p>Start date</p></th>
					<th scope="col" class="th-custom"><p>End date</p></th>
					<th scope="col" class="th-custom"><p>Phone number</p></th>
					<th scope="col" class="th-custom"><p>organization</p></th>
					<th scope="col" class="th-custom"><p>createdDate</p></th>
					<th scope="col" class="th-custom"><p>money</p></th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tempDonation" items="${donations.content}">

					<tr>
						<td><p>${tempDonation.id}</p></td>
						<th scope="row">
							<p class="d-name">${tempDonation.name}</p>
							<p class="d-status">${tempDonation.status}</p>
						</th>
						<td><p>${tempDonation.code}</p></td>
						<td><p>${tempDonation.startDate}</p></td>
						<td><p>${tempDonation.endDate}</p></td>
						<td><p>${tempDonation.phoneNumber}</p></td>
						<td><p>${tempDonation.organization}</p></td>
						<td><p>${tempDonation.createdDate}</p></td>
						<td><p>${tempDonation.money}</p></td>
						
					</tr>
				</c:forEach>


			</tbody>
		</table>


	</div>
	<div>
		<p>donations: <span>${donations}</span></p>
		<%-- <p>class: <span>${class}</span></p> --%>
		<p>content: <span>${content}</span></p>
		<p>number: <span>${content}</span></p>
		<p>number Of element: <span>${numberofelement}</span></p>
		<p>total Page: <span>${totalpage}</span></p>
		<p>total Element: <span>${totalelement}</span></p>
		<p>size: <span>${size}</span></p>
		<p>has Content: <span>${hascontent}</span></p>
		<p>has next: <span>${hasnext}</span></p>
		<p>has previous: <span>${hasprevious}</span></p>
		<p>is empty: <span></span>${isempty}</p>
		<p>is First: <span></span>${isfirst}</p>
		<p>is Last: <span>${islast}</span></p>
	
	
	</div>
	
	
	</div>

	<script>
		$(document).ready(
				function() {
					$("#searchingValue").change(
							function() {
								updateShowingTable2($('#size').val(),
										$('#page').val(), $('#searchingValue')
												.val(), "#contentTest");
							});

					$("#page").change(
							function() {
								updateShowingTable2($('#size').val(),
										$('#page').val(), $('#searchingValue')
												.val(), "#contentTest");
							});

					$("#size").change(
							function() {
								updateShowingTable2($('#size').val(),
										$('#page').val(), $('#searchingValue')
												.val(), "#contentTest");
							});
				});

		function updateShowingTable2(size, page, searchingValue, tableContent) {
			// Kiểm tra xem searchingValue có thay đổi so với lần trước không
			console.log("size: " + size);
			console.log("page: " + page);
			console.log("searchingValue: " + searchingValue);

			$.ajax({
				type : "GET",
				url : window.location.href,
				data : {
					size : size,
					page : page,
					searchingValue : searchingValue
				},
				success : function(data) {
					$(tableContent).html($(data).find(tableContent).html());

				}
			});
		}
	</script>
</body>
</html>