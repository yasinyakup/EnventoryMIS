
<!-- encoding ayarları, türkçe karekterleri düzgün görüntülemek için -->
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>


<!-- Core JSTL tag ve Spring form tag kütüphaneleri, jstl taglerini kullanmak için jstl viewresolver gerekir, spring form taginde ayni şekilde -->
<%@ taglib prefix = "c"uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Kalyon Elektronik&Elektrik&Mekanik Yedek Parça Yönetim Sistemi</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Kalyon Enerji</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button
            ><!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Ayarlar</a><a class="dropdown-item" href="#">Log Kayıtları</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Çıkış yap</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="charts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Ana Sayfa</a
                            >
                            <div class="sb-sidenav-menu-heading">Filtreleme</div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Kategori
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            
                            <c:if test="${!empty(categories)} }">
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                <c:forEach items="${categories}" var="category">
                               <a class="nav-link" href="#">${category.name}</a>
                               </c:forEach>
                               <a class="nav-link" href="#">Mekanik parçalar</a>
                               <a class="nav-link" href="#">Pnömatik parçalar</a>
                               <a class="nav-link" href="#">Elektronik parçalar</a>
                               <a class="nav-link" href="#">Ortak parçaalr</a>
                               
                                </nav>
                            </div>
                            </c:if>
                            
                            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages"
	                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
	                                Lokasyon
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	Workshop
                                        	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                        </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
	                                        <a class="nav-link" href="#">Ingot</a>
	                                        <a class="nav-link" href="#">Wafer</a>
	                                        <a class="nav-link" href="#">Cell</a>
	                                        <a class="nav-link" href="#">Modül</a>
                                        </nav>
                                    </div>
	                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
	                                    Ortak
                                        	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                        </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                        	<a class="nav-link" href="#">Tesis</a>
	                                        <a class="nav-link" href="#">Ortak</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Arayüzler</div>
                            <a class="nav-link" href="charts.html"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Kullanıcılar</a
                            ><a class="nav-link" href="tables.html"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Malzemeler</a
                            >
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Kullanıcı Ad-Soyad:</div>
                        Yasin Yakup
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Ingot</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Lokasyon</a></li>
                            <li class="breadcrumb-item active">Ingot</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                            
                            
                             <h4>Son Güncellemeler</h4>
        <table class="table table-bordered table-hover">
        <thead>
	        <tr class="bg-muted  bg-light font-weight-bold">
		        <td>Malzeme adı</td>
		        <td>Kullanan personal</td>
		        <td>Kullanılan ekipman</td>
		        <td>Adet</td>
		        <td>Birim</td>
		        <td>Tarih</td>
		        <td>Açıklama</td>
	        </tr>
        </thead>
        
         <tbody>
	        <tr>
		        <td >röle</td>
		        <td>yasin</td>
		        <td>laminasyon</td>
		        <td>5</td>
		        <td>adet</td>
		        <td>05-04-2020</td>
		        <td>Eskisi bozulduğu için değiştirildi</td>
	        </tr>
	        
	         <tr>
		        <td>röle</td>
		        <td>yasin</td>
		        <td>laminasyon</td>
		        <td>5</td>
		        <td>adet</td>
		        <td>05-04-2020</td>
		        <td>Eskisi bozulduğu için değiştirildi</td>
	        </tr>
	         <tr">
		        <td>röle</td>
		        <td>yasin</td>
		        <td>laminasyon</td>
		        <td>5</td>
		        <td>adet</td>
		        <td>05-04-2020</td>
		        <td>Eskisi bozulduğu için değiştirildi</td>
	        </tr>
	          <tr>
		        <td>röle</td>
		        <td>yasin</td>
		        <td>laminasyon</td>
		        <td>5</td>
		        <td>adet</td>
		        <td>05-04-2020</td>
		        <td>Eskisi bozulduğu için değiştirildi</td>
	        </tr>
	          <tr>
		        <td>röle</td>
		        <td>yasin</td>
		        <td>laminasyon</td>
		        <td>5</td>
		        <td>adet</td>
		        <td>05-04-2020</td>
		        <td>Eskisi bozulduğu için değiştirildi</td>
	        </tr>
        </tbody>
        
        </table>
                            
                            
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Kullanıcı Giriş Kayıt grafiği</div>
                            <div class="card-body"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                            <div class="card-footer small text-muted">Son güncelleme dün 11:59 da gerçekleşmiştir</div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Malzeme tüketim Bar Chart</div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Son güncelleme dün 11:59 da gerçekleşmiştir</div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-pie mr-1"></i>Malzeme tüketim Pie Chart</div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Son güncelleme dün 11:59 da gerçekleşmiştir</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Kalyon Enerji Bilişim Departmanı 2019</div>
                            <div>
                                <a href="#">Gizlilik Politikası</a>
                                &middot;
                                <a href="#">Şartlar</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
  
    </body>
</html>
