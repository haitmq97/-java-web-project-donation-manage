<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<div class="container">

		<%-- customer list --%>
		<table
			class="table table-bordered table-striped border-black table-success">
			<thead>
				<tr class="table-dark">
					<th>id</th>
					<th>Mã</th>
					<th>Tên</th>
					<th>Ngày bắt đầu</th>
					<th>Ngày kết thúc</th>
					<th>Số điện thoại</th>
					<th>Tổng tiền</th>
					<th>Trạng thái</th>

					<th>Hành động</th>

				</tr>
			</thead>

			<tbody class="table-group-divider">
				<!-- loop over and print customer in list -->


				<c:forEach var="tempDonation" items="${donations}">

					<%--
					<c:url var="updateLink" value="/user/showFormForUpdate">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>

					

					<c:url var="setStatus" value="/user/lockOrUnlock">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>

					<c:url var="details" value="/user/userDetails">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>
 --%>
					<c:url var="deleteLink" value="/donation/delete">
						<c:param name="id" value="${tempDonation.id}" />
					</c:url>
					
					<c:url var ="updateLink" value="/donation/updateForm">
						<c:param name="id" value="${tempDonation.id}"/>
					</c:url>
					<c:url var ="detailLink" value="/donation/detail">
						<c:param name="id" value="${tempDonation.id}"/>
					</c:url>

					<tr>
						<td>${tempDonation.id}</td>
						<td>${tempDonation.code}</td>
						<td>${tempDonation.name}</td>
						<td>${tempDonation.startDate}</td>
						<td>${tempDonation.endDate}</td>
						<td>${tempDonation.phoneNumber}</td>
						<td>${tempDonation.money}</td>
						<td>${tempDonation.status}</td>




						<td>
						<a href="${updateLink}" >Update</a>
						<a
							href="${deleteLink}"
							onclick="if(!confirm('Are you sure you want to delete this donation?')) return false;">Delete</a>
						<a href="${detailLink}">details</a>
			
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>