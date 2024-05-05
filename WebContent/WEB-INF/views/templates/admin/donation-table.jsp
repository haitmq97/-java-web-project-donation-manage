<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	
<link rel="stylesheet"
	href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css'/>"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />




<!-- customer js -->	

<script src="<c:url value='https://code.jquery.com/jquery-3.6.4.min.js'/>"> </script>
<script src="<c:url value='/static/common/assets/js/form.js' />"></script>
<script src="<c:url value='/static/common/assets/js/script.js' />"></script> 
<script src="<c:url value='/static/common/assets/js/data-list.js' />"></script> 




</head>
<body>
	<!-- Header layout -->
	<jsp:include page="../common/header-layout-test.jsp">
		<jsp:param name="includePart" value="headerSection" />
	</jsp:include>





	<section class="site-section content">
		<div class="container" id="content-table">
			<div class="row mb-5 justify-content-center">
				<div class="col-md-7 text-center">
					<h2 class="section-title mb-2">Các đợt quyên góp</h2>
				</div>
			</div>




			<div class="container">
				<div class="main-content">
					<div class="h-content">
					<div class="add-div">
						<button class="btn btn-success donation-btn" onclick="redirectToAddOrUpdate(0)">Thêm mới</button>
						<!-- 
						<a href="addDonation">them moi</a>
						
						 -->
						
					</div>
		
						<div class="sp-tool d-flex flex-column flex-sm-row justify-content-between mt-3">
							<div class="page-selector">

								<input id="currentPage" type="hidden" name="currentPage"
									value="${currentPage}" /> <label for="size">Rows
									per page:</label> 
								<select id="pageSize" name="size"
									
									class="entries-select rounded form-control">
									<option value="3" ${donations.size == 3 ? 'selected' : ''}>3</option>
									<option value="4" ${donations.size == 4 ? 'selected' : ''}>4</option>
									<option value="5" ${donations.size == 5 ? 'selected' : ''}>5</option>
									<option value="10" ${donations.size == 10 ? 'selected' : ''}>10</option>
									<option value="15" ${donations.size == 15 ? 'selected' : ''}>15</option>
									<option value="20" ${donations.size == 20 ? 'selected' : ''}>20</option>
									<!-- Add more options as needed -->
								</select>
							
			

							</div>
							<div class="search-box">
								<label for="searching-input">Search:</label> <input type="text"
									name="searching-input" id="searchingValue"
									class="searching-input rounded p-2 form-control"
									placeholder="by Code or by status ..."
									value="${searchingValue}"  />
							</div>
						
						</div>
					</div>
					
					
					
					
							

					
					
					
					<div class="m-content list" id="donation-list">
						<div class="table-div">
							<table class="table table-striped table-content">
							<thead class="tb-head-title">
								<tr>
				
									<th scope="col" class="th-custom"><p>Code</p></th>
									<th scope="col" class="th-custom"><p>Name</p></th>
									
									<th scope="col" class="th-custom"><p>Date</p></th>
									
									<th scope="col" class="th-custom"><p>Organization</p></th>
									<th scope="col" class="th-custom"><p>Phone number</p></th>
									<th scope="col" class="th-custom"><p>Total money</p></th>
									<th scope="col" class="th-custom"><p>status</p></th>
									<th scope="col" class="th-custom"><p>Action</p></th>
								</tr>
							</thead>
							
						
							
							<tbody id="scrollableRows">
								<c:forEach var="tempDonation" items="${donations.content}">

									<c:url var="donateLink" value="/v1/donateForm">
										<c:param name="id" value="${tempDonation.id}" />
									</c:url>

									<c:url var="detailLink" value="/v1/donation-detail">
										<c:param name="id" value="${tempDonation.id}" />
									</c:url>
									
									<c:url var="deleteLink" value="/admin/deleteDonation">
										<c:param name="id" value="${tempDonation.id}" />
										<c:param name="currentUrl" value="/admin/donations" />
									</c:url>
									
									<c:url var="updateLink" value="/admin/updateDonation">
										<c:param name="id" value="${tempDonation.id}" />
									</c:url>
									
									<c:url var="testLink" value="/admin/donations">
										
									</c:url>



									<tr>

										<td><p>${tempDonation.code}</p></td>
										<td><p>${tempDonation.name}</p></td>
										<td>
											<p>Start date:</p>
											<p>${tempDonation.startDate}</p>
											<p>End date: </p>
											<p>${tempDonation.endDate}</p>
										</td>
										
										<td><p>${tempDonation.organization}</p></td>
										<td><p>${tempDonation.phoneNumber}</p></td>
										<td><p>${tempDonation.money}</p></td>
										<td><p class="d-status">${tempDonation.status}</p></td>
										<td class="action-c">
											<button class="btn btn-success donation-btn donation-update-btn" title="Chi tiết" onclick="redirectToAddOrUpdate('${tempDonation.id}')">
												<span class="content-btn-text">Cập nhật</span><span
													class="content-btn-icon"></span>
											</button>
											<button class="btn btn-success donation-btn"
												title="Quyên góp" >
												<span class="content-btn-text">Chi tiết</span><span
													class="content-btn-icon"></span>
											</button>
											<button class="btn btn-success donation-btn d-delete-btn" title="Xóa" data-url="${deleteLink}">
												<span class="content-btn-text">Xóa</span><span
													class="content-btn-icon"></span>
											</button>
											<button class="btn btn-success donation-btn"
												title="Quyên góp" >
												<span class="content-btn-text" onclick="toDonateForm(${tempDonation.id},$('#authorities').val())">Quyên góp</span><span
													class="content-btn-icon"></span>
											</button>
											<button class="btn btn-success donation-btn" title="Chi tiết">
												<span class="content-btn-text">Đóng</span><span
													class="content-btn-icon"></span>
											</button>
											<button class="btn btn-success donation-btn"
												title="Quyên góp" >
												<span class="content-btn-text">Kết thúc</span><span
													class="content-btn-icon"></span>
											</button>
											<a href="${updateLink}"></a>
										</td>
									</tr>
									
									
									<div class="overlay-container">
										<div class="row">
											<div id="overlay" onclick="closeAllPopup()"></div>
											<div class="popup col-12 col-sm-8 col-md-4">
												
											
											</div>
										</div>
									</div>	
									
									
									
									
									
									
									
									
								</c:forEach>


							</tbody>
						</table>
						</div>
						<div>
							<div>
								<input id="currentPage1" type="hidden" value="${currentPage}" />
								<c:out value="current Pg:  ${currentPage}  " />
								<br> 
								<input id="totalPages1" type="hidden" value="${totalPage}" />
								<c:out value="total Pg:  ${totalPage}  " />
								
	
								<br> <input id="size1" type="hidden" value="${currentSize}" />
								<c:out value="size:  ${currentSize}  " />
								<br> <input id="searchingValue1" type="hidden"
									value="${searchingValue}" />
								<c:out value="searchingValue:  ${searchingValue}  " />
								<br> <input id="importUrl1" type="hidden"
									value="${searchingValue}" />
								<c:out value="searchingValue:  ${searchingValue}  " />
								
								<c:set var="testValue1" value="<c:url value='/v1/donations'/>" />

 
 								
							</div>
							<div id="pagination-container"></div>
						
						
						
						
						
						
							<script>
							
							$(document).ready(function() {
								$('#pageSize').change(function() {
									updateShowingTable($('#pageSize').val(), $('#searchingValue').val(), "#donation-list");
								});

								$('#searchingValue').on('input', function() {
									updateShowingTable($('#pageSize').val(), $('#searchingValue').val(), "#donation-list")
								});
								
								
								var currentPage = parseInt(document.getElementById("currentPage1").value, 10);
								var totalPages = parseInt(document.getElementById("totalPages1").value, 10);



								generatePaginationButtons(currentPage, totalPages, $('#pageSize').val(), $('#searchingValue').val(), "#donation-list");
								
								let btnList = document.getElementsByClassName("page-btn");
								Array.from(btnList).forEach(btn => {
								    if (parseInt(btn.textContent) === currentPage) {
								    	
								        btn.disabled = true;
								    }
								});
								
								

							});
							
							
							
							
							</script>


						</div>

					</div>
					
					
				</div>

			</div>
		</div>
	</section>

<%-- 
	<div id="">
		<c:import url="/admin/updateDonation?id=1" />

	</div>
	
	 --%>
	 
	 

	<script src="<c:url value='/static/common/assets/js/script.js' />"></script> 
<%-- 	
<script src="<c:url value='/static/common/assets/js/script.js' />"></script>

 --%>
<%-- 
<script src="<c:url value='/static/common/assets/js/header.js' />"></script> 

<script src="<c:url value='/static/common/assets/js/form.js' />"></script>
 --%>
<%-- <script src="<c:url value='/static/common/assets/js/pagination.js' />"></script> --%>




	
	<jsp:include page="../common/footer-layout2.jsp">
		<jsp:param name="includePart" value="footerSection" />
	</jsp:include>


	<div class="overlay-container">
		<div class="row">
			<div id="overlay" onclick="closeAllPopup()"></div>
			<div class="popup col-12 col-sm-8 col-md-4">
		
		
				<% int donationId = (int)request.getAttribute("donationId"); %>
    			<% if (donationId != 0) { %> 
			        <div class="form-container donate-form " id="donate">
				        <div class="container form-head">
				            <div class="form-title">
				                <div class="d-flex justify-content-between">
				                    <p>Quyên góp:</p>
				                    <p>${donationCode}</p>
				                </div>
				                <h4 class="d-inline-block mx-auto">${donationName}</h4>
				
				            </div>
				        </div>
				        <div class="container form-main">
				            <form:form modelAttribute="userDonation" action="${process}"
				                method="POST">
				                <input type="hidden" name="donationId" value="${donationId}" />
				
				                <div class="form-group form-group-custom">
				                  <label class="field-label" for="fullName">Họ và Tên:</label>
				                  <form:input type="text" class="form-control" id="fullName" path="name" />
				                  
				                </div>
				                <div class="form-group form-group-custom">
				                  <label class="field-label" for="donationAmount">Số Tiền Quyên Góp:</label>
				                  <form:input type="number" class="form-control" id="donationAmount" path="money" />
				                </div>
				                <div class="form-group form-group-custom">
				                  <label class="field-label" for="note">Ghi Chú:</label>
				                  <form:textarea class="form-control" id="note" path="note" rows="3"></form:textarea>
				                </div>
				
				                <div class="submit-p">
				                    <button type="button" class="cancel-btn "
				                        onclick="closeAllPopup()">Hủy</button>
				                    <button type="submit" class="submit-btn">Quyên góp</button>
				                </div>
				            </form:form>
				        </div>
	
	    		</div>
	    		
	    		
	    		
	    		
	    		<!-- delete modal -->
			
				<div class="form-container donate-form" id="delete">
					<div class="container form-head">
						<h3>Bạn có chắc chắn xóa?</h3>
					</div>
					<div class="container form-main">
						<p>
							Đợt quyên góp: <span></span>
						</p>
						<p>
							Mã quyên góp: <span></span>
						</p>
						<div class="submit-p">
							<button type="button" class="cancel-btn "
								onclick="closeAllPopup()">Hủy</button>
							<button type="submit" class="submit-btn" id="confirm-delete-btn"
								onclick="window.location.href=''">Xóa</button>
						</div>

					</div>
				</div>
    		
    		<% } %>
			
				

				
			<div class="form-container donate-form " id="donation-addOrUpdate">
			        <div class="container form-head">
			            <div class="form-title">
			                <div class="d-flex justify-content-between">
			                	<% if (donationId != 0) { %>
			                		<h4 class="d-inline-block mx-auto">Cập nhật</h4>
			                	
			                	<% } else { %>
			                     	<h4 class="d-inline-block mx-auto">Thêm mới</h4>
			                     
			                     <% } %>
			                </div>
			               
			
			            </div>
			        </div>
			        <div class="container form-main">
			            <form:form modelAttribute="addDonation" action="${processAdd}"
			                method="POST">
			                <input type="hidden" name="donationId" value="${donationId}" />
			
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="code-add">Mã đợt quyên góp</label>
			                  <form:input type="text" class="form-control" id="code-add" path="code" />
			                  
			                </div>
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="name-add">Tên đợt quyên góp:</label>
			                  <form:input type="text" class="form-control" id="name-add" path="name" />
			                </div>
			                
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="startDate-add">Ngày bất đầu:</label>
			                  <form:input type="date" class="form-control" id="startDate-add" path="startDate" />
			                </div>
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="endDate-add">Ngày kết thúc:</label>
			                  <form:input type="date" class="form-control" id="endDate-add" path="endDate" />
			                </div>
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="organization-add">Tổ chức:</label>
			                  <form:input type="text" class="form-control" id="organization-add" path="organization" />
			                </div>
			                
			                <div class="form-group form-group-custom">
			                  <label class="field-label" for="phoneNumber-add">Số điện thoại:</label>
			                  <form:input type="number" class="form-control" id="phoneNumber-add" path="phoneNumber" />
			                </div>
							
							<div class="form-group form-group-custom">
			                  <label class="field-label" for="description-add">Nội dung:</label>
			                  
			                  <form:textarea class="form-control" id="description-add" path="description" rows="3"></form:textarea>
			                </div>
							
			                <div class="submit-p">
			                    <button type="button" class="cancel-btn "
			                        onclick="closeAllPopup()">Hủy</button>
			                    <button type="submit" class="submit-btn">Thêm</button>
			                </div>
			            </form:form>
			        </div>

    		</div>

		
		
			

			

		</div>
		
		
		</div>
	
	
	<script>
	function redirectToAddOrUpdate(donationId) {
		$.ajax({
			type: "GET",
			url: window.location.href,
			data: {

				donationId: donationId
			},
			success: function(data) {
				$('#donation-addOrUpdate').html(
					$(data).find('#donation-addOrUpdate').html());
			}
		});
		
		openPopup('donation-addOrUpdate');

	}
	
	</script>
		
		
	</div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
$(document).ready(function() {
	  $(".d-delete-btn").click(function() {
	    var url = $(this).data("url");
	    console.log(url);
	    
	   	$("#confirm-delete-btn").click(function() {
	      window.location.href = url;
	    });
	     
	     openPopup("delete");

	  });
	});

</script>

</body>
</html>