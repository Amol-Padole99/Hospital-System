<%@page import="com.db.DBConnect" %>
<%@page import ="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@ include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>


</head>
<body>
	<%@ include file="component/navbar.jsp" %>
	


	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos1.jpeg" class="d-block w-100" alt="..."
					height="700px">
			</div>
			<div class="carousel-item">
				<img src="img/hos12.jpg " class="d-block w-100" alt="..."
					height="700px">
			</div>
			<div class="carousel-item">
				<img src="img/hos3.jpg" class="d-block w-100" alt="..."
					height="700px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2 ">Key features of our Hospital</p>
		<div class="row">
			<div class="col -md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Emergency response training prepares staff to react
									quickly to medical crises, ensuring timely and life-saving
									interventions</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>All patient rooms, corridors, lifts, and nursing stations
									are cleaned twice daily,High-touch surfaces (bed rails,
									switches, doorknobs, tables) disinfected every 2 hours,Cleaning
									schedule displayed in every department. !</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>A friendly doctor is someone who treats patients with
									kindness, respect, and genuine care. They communicate clearly,
									listen patiently, and make people feel comfortable even in
									difficult medical situations. Their warm behavior builds trust
									and reduces fear, helping patients heal faster both emotionally
									and physically!</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Reserch</p>
								<p>Medical research is the scientific process of studying
									diseases, treatments, the human body, and healthcare practices
									to improve patient health. It helps doctors discover new
									medicines, vaccines, surgical methods, and technologies that
									save lives and enhance quality of care!</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img alt=" " src="img/doc7.avif">
			</div>
		</div>
	</div>
	
	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team !</p>

		<div class=" row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.avif" width="250px" height="300px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">CEO & Chairman</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.webp" width="260px" height="300px">
						<p class="fw-bold fs-5">Dr. Shiva Kumar</p>
						<p class="fs-7">[Chief Doctor]</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc8.jpg" width="260px" height="300px">
						<p class="fw-bold fs-5">Dr .Niuise Paule</p>
						<p class="fs-7">[Chief Doctor]</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc1.webp" width="260px" height="300px">
						<p class="fw-bold fs-5">Dr .Sayali Darekar</p>
						<p class="fs-7">[Chief Doctor]</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="component/footer.jsp" %>
</body>
</html>