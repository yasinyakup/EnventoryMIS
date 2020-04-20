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
<title>Kalyon Enerji Giriş Sayfası</title>
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="bg-gradient-light">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="home">Kalyon Enerji</a>
	</nav>
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header bg-secondary text-light">
									<h3 class="text-center font-weight-light my-4">GİRİŞ</h3>
								</div>
								<div class="card-body">
									<form:form method="post" action="/userLogin"
										modelAttribute="login">
										<div class="form-group">
											<label class="small mb-1" for="inputText">Kullanıcı</label>
											<form:input class="form-control py-4" path="userName"
												id="inputUser" type="text"
												placeholder="Kullanıcı adı/Sicil Numaranız" />
											<div class="text-danger">
												<form:errors path="userName" class="help-inline" />
											</div>
										</div>

										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Şifre</label>
											<form:input class="form-control py-4" path="password"
												id="inputPassword" type="password"
												placeholder="Şifre giriniz" />
											<div class="text-danger">
												<form:errors path="password" class="help-inline" />
											</div>
										</div>
										<div class="form-group">
											<c:if test="${!empty(msg)}">
												<div class="text-danger">
													<span>${msg}</span>
												</div>
											</c:if>
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													id="rememberPasswordCheck" type="checkbox" /><label
													class="custom-control-label" for="rememberPasswordCheck">Hatırla</label>
											</div>
										</div>
										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<a class="small" href="/password">Şifremi unuttum?</a> <input
												type="submit" value="Giriş Yap">
										</div>
									</form:form>
								</div>
								<div class="card-footer text-center bg-secondary">
									<div class="small  text-light">
										<a href="/register">Kullanıcı Hesabım yok? Kaydol!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<div id="layoutAuthentication_footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
