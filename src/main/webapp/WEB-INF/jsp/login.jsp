
<!-- encoding ayarları, türkçe karekterleri düzgün görüntülemek için -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Kalyon Enerji</title>
</head>
<body>
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="home">Kalyon Enerji</a>
	</nav>
	<div class="container d-flex justify-content-center">
		<div
			class="card mt-5  col-lg-4 border-0 d-flex justify-content-center">
			<div class="card-header bg-secondary">
				<h4 class="text-center">GİRİŞ</h4>
				<c:if test="${!empty(msg)}">
					<div class="text-danger">
						<span>${msg}</span>
					</div>
				</c:if>
			</div>
			<form action="/login" method="post" class="form-group">
				<label>Kullanıcı Adı</label> <input type="text" name="username"
					class="form-control" /> <label>Şifre</label> <input
					type="password" name="password" class="form-control"> <input
					type="submit" name="submit" value="Giriş Yap"
					class="form-control btn btn-lg btn-block bg-primary text-center mt-4">
				<div class="small  text-light">
					<a href="/register">Kullanıcı Hesabım yok? Kaydol!</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
