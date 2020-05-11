<!-- encoding ayarları, türkçe karekterleri düzgün görüntülemek için -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!-- Core JSTL tag ve Spring form tag kütüphaneleri, jstl taglerini kullanmak için jstl viewresolver gerekir, spring form taginde ayni şekilde -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="header.jsp"></jsp:include>
<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<jsp:include page="sidenav.jsp"></jsp:include>

	</div>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h1 class="mt-4">Dosya Yükle</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="#">Ana Sayfa</a></li>
					<li class="breadcrumb-item active">Dosya Yükle</li>
				</ol>
				<div class="card mb-4">
					<div class="card-body">
						<form:form class="md-form" action="/uploadFile" methos="POST" enctype="multipart/form-data">
							<div class="custom-file mb-3">
								<input type="file" class="custom-file-input" id="customFile"
									name="file"> <label class="custom-file-label"
									for="customFile">Dosya seçin</label>
							</div>
							<input class="btn btn-lg btn-primary align-right" type="submit"
								value="Yükle">
						</form:form>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="js/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>

</body>
</html>
