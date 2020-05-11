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
</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<a class="nav-link" href="home"><div
								class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Ana Sayfa</a>
						<div class="sb-sidenav-menu-heading">Filtreleme</div>

						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts"><div
								class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Kategori
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div></a>

						<c:if test="${!empty(categories)}">
							<div class="collapse" id="collapseLayouts"
								aria-labelledby="headingOne" data-parent="#sidenavAccordion">
								<nav class="sb-sidenav-menu-nested nav">
									<c:forEach items="${categories}" var="category">
										<a class="nav-link" href="#">${category.name}</a>
									</c:forEach>

								</nav>
							</div>
						</c:if>


						<a class="nav-link collapsed" href="#" data-toggle="collapse"
							data-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages"><div
								class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> Lokasyon
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div> </a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-toggle="collapse"
									data-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Workshop
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<c:if test="${!empty(workshops) }">
									<div class="collapse" id="pagesCollapseAuth"
										aria-labelledby="headingOne"
										data-parent="#sidenavAccordionPages">
										<nav class="sb-sidenav-menu-nested nav">
											<c:forEach items="${workshops}" var="workshop">
												<a class="nav-link" href="#">${workshop.name}</a>
											</c:forEach>
										</nav>
									</div>
								</c:if>
								<a class="nav-link collapsed" href="#" data-toggle="collapse"
									data-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Ortak
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="#">Tesis</a> <a class="nav-link"
											href="#">Ortak</a>
									</nav>
								</div>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Arayüzler</div>
						<a class="nav-link" href="users"><div
								class="sb-nav-link-icon">
								<i class="fas  fa-address-book"></i>
							</div> Kullanıcılar</a><a class="nav-link" href="items"><div
								class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Malzemeler</a> <a class="nav-link" href="employees"><div
								class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Çalışan bilgileri</a> <a class="nav-link" href="file"><div
								class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Dosya Yükle</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Kullanıcı Ad-Soyad:</div>
					Yasin Yakup
				</div>
			</nav>
		</div>
	</div>
</html>
