<!-- encoding ayarları, türkçe karekterleri düzgün görüntülemek için -->
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>


<!-- Core JSTL tag ve Spring form tag kütüphaneleri, jstl taglerini kullanmak için jstl viewresolver gerekir, spring form taginde ayni şekilde -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                        <h1 class="mt-4">Arayüzler</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="#">Arayüz</a></li>
                            <li class="breadcrumb-item active">Kullanıcılar</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                            
                            
                             <h4>Kullanıcı Listesi</h4>
                             <div class="table-responsive">
						        <table class="table table-bordered table-hover">
						        <thead>
							        <tr class="bg-muted  bg-light font-weight-bold">
								        <td>Kullanıcı Adı</td>
								        <td>Şifre</td>
								        <td>Aktif</td>
								        <td>Sicil No</td>
								        <td>Yetki</td>
							        </tr>
						        </thead>
						        <c:if test="${!empty(users)}">
						         <tbody>
						         <c:forEach items="${users}" var="user">
							        <tr>
								        <td >${user.name}</td>
								        <td>${user.password}</td>
								        <td>${user.active}</td>
								        <td>${user.employee.empCode}</td>
								        <td>${user.role.name}</td>
							        </tr>
							        </c:forEach>
							      
						        </tbody>
						        </c:if>
						        
						        </table>
						        </div>
                            
                            
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
                <jsp:include page="footer.jsp" /> 
            </div>
            </div>
        <script src="js/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
