<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hospital.webp");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/doc8.jpg">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class="fs-4 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="addAppointment" method="post">
							<input type="hidden" name="userid" value="${userObj.id}">

							<div class="row">
								<div class="col-md-6">
									<label class="form-label">Full Name</label>
									<!-- name corrected from 'fulName' -> 'fullname' -->
									<input required type="text" class="form-control"
										name="fullname">
								</div>

								<div class="col-md-6">
									<label>Gender</label> <select class="form-control"
										name="gender" required>
										<option value="male">Male</option>
										<option value="female">Female</option>
									</select>
								</div>

								<div class="col-md-6">
									<label class="form-label">Age</label> <input required
										type="number" class="form-control" name="age" min="0">
								</div>

								<div class="col-md-6">
									<label class="form-label">Appointment Date</label> <input
										type="date" class="form-control" required name="appoint_date">
								</div>

								<div class="col-md-6">
									<label class="form-label">Email</label> <input required
										type="email" class="form-control" name="email">
								</div>

								<div class="col-md-6">
									<label class="form-label">Phone No</label>
									<!-- using text for phone to avoid issues with leading zeros and parsing -->
									<input maxlength="15" required type="text" class="form-control"
										name="phno">
								</div>

								<div class="col-md-6">
									<label class="form-label">Diseases</label> <input required
										type="text" class="form-control" name="diseases">
								</div>

								<div class="col-md-6">
									<label class="form-label">Doctor</label> <select required
										class="form-control" name="doct">
										<option value="">--select--</option>
										<%
										DoctorDao dao = new DoctorDao(DBConnect.getConn());
										List<Doctor> list = dao.getAllDoctor();
										for (Doctor d : list) {
										%>
										<option value="<%=d.getId()%>"><%=d.getFullName()%>
											(<%=d.getSpecialist()%>)
										</option>
										<%
										}
										%>
									</select>
								</div>

								<div class="col-md-12">
									<label>Full Address</label>
									<textarea required name="address" class="form-control" rows="3"></textarea>
								</div>

								<c:if test="${empty userObj}">
									<a href="user_login.jsp"
										class="col-md-6 offset-md-3 btn btn-success">Submit</a>
								</c:if>
								<c:if test="${not empty userObj}">
									<button type="submit"
										class="col-md-6 offset-md-3 btn btn-success">Submit</button>
								</c:if>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>