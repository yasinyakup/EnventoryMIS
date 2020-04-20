<!-- encoding ayarları, türkçe karekterleri düzgün görüntülemek için -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!-- Core JSTL tag ve Spring form tag kütüphaneleri, jstl taglerini kullanmak için jstl viewresolver gerekir, spring form taginde ayni şekilde -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Kalyon Elektronik&Elektrik&Mekanik Yedek Parça Yönetim
	Sistemi</title>
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="home">Kalyon Enerji</a>

	</nav>
	<br>
	<div id="layoutRegister">
		<div id="layoutRegister_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header bg-secondary text-light">
									<h3 class="text-center font-weight-light my-2">KAYIT
										İŞLEMLERİ</h3>
										<c:if test="${!empty(msg)}">
												<div class="text-danger">
													<span>${msg}</span>
												</div>
											</c:if>
								</div>
								<div class="card-body">
									<form:form method="post" action="/registerEmp"
										modelAttribute="newEmp">
										<div class="form-group">
											<label class="small mb-1" for="inputsText">İsim</label>
											<form:input path="firstName" class="form-control py-2"
												id="inpuFName" type="Text" placeholder="Adınızı giriniz" />
											<div class="text-danger">
												<form:errors path="firstName" class="help-inline" />
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputText">Soyad</label>
											<form:input path="lastName" class="form-control py-2"
												id="inputLName" type="Text" placeholder="Soyadınızı giriniz" />
											<div class="text-danger">
												<form:errors path="lastName" class="help-inline" />
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputText">Sicil No</label>
											<form:input path="empCode" class="form-control py-2"
												id="inputEmpCode" type="Text"
												placeholder="Sicil No. giriniz" />
											<div class="text-danger">
												<form:errors path="empCode" class="help-inline" />
											</div>
										</div>


										<div class="form-group date">
											<label class="small mb-1">[Doğum tarihi]</label>
											<div class='input-group date' id='datetimepicker'>
												<form:input path="dob" type='date'
													class="form-control rounded" />
												<div class="text-danger">
													<form:errors path="dob" class="help-inline" />
												</div>

											</div>
										</div>


										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Cinsiyet</label><br>
											<div class="form-check form-check-inline">
												<form:radiobutton path="gender" class="form-check-input"
													id="gender" value="F" />
												<label class="form-check-label" for="inlineRadio1">Bayan</label>
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton path="gender" class="form-check-input"
													id="gender" value="M" />
												<label class="form-check-label" for="gender">Erkek</label>

											</div>
											<div class="text-danger">
												<form:errors path="gender" class="help-inline" />
											</div>
										</div>


										<div class="form-group">
											<label class="small mb-1">Görevi</label>

											<form:select path="position.id"
												class="dropdown-item btn-block border rounded"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">

												<form:options items="${positionItems}" itemValue="id"
													itemLabel="name" />

											</form:select>
											<div class="text-danger">
												<form:errors path="position.id" class="help-inline" />
											</div>
										</div>



										<div class="form-group">
											<label class="small mb-1">Birim</label>

											<form:select path="department.id"
												class="dropdown-item btn-block border rounded"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">

												<form:options items="${departmentItems}" itemValue="id"
													itemLabel="name" />

											</form:select>
											<div class="text-danger">
												<form:errors path="department.id" class="help-inline" />
											</div>
										</div>


										<div class="form-group date">
											<label class="small mb-1">İşe başlama tarihi</label>
											<div class='input-group date' id='datetimepicker'>
												<form:input path="beginDate" type='date'
													class="form-control rounded" />
												<span class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>
												</span>
											</div>
											<div class="text-danger">
												<form:errors path="beginDate" class="help-inline" />
											</div>
										</div>

										<div class="form-group text-center ">
											<input type="submit" value="Kayıt Ol">
										</div>

									</form:form>
								</div>
								<div class="card-footer text-center bg-secondary">
									<div class="small  text-light">
										<a href="login">Zaten kullanıcıyın? Giriş yap</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>

</body>
</html>
