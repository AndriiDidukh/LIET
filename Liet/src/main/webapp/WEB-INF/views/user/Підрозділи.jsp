<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Підрозділи</h2>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/NMV"> <img src="/resources/image/image.png" class="picture3"> <br>Навчально<br>
							методичний<br> відділ
						</a>

					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VNMS"> <img src="/resources/image/p1.jpg" class="picture3"> <br>Відділ<br> науки і <br>міжнародної
							<br>співпраці
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/FEV"> <img src="/resources/image/image2.png" class="picture3"> <br>Фінансово<br>
							економічний<br> відділ
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VK"> <img src="/resources/image/people2.jpg" class="picture3"> <br>Відділ <br>кадрів
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/AGV"> <img src="/resources/image/image3.png" class="picture3"> <br>Адміністративно<br>господарський<br>
							відділ
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VPN"> <img src="/resources/image/image4.png" class="picture3"> <br>Відділ <br>практичного
							<br>навчання
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/departmentEng"> <img src="/resources/image/brflag.jpg" width="100%"></a>
				</div>
			</div>
			<h2>Новини</h2>
			<c:forEach items="${news}" var="groupe">
				<div class="frame">
					<h4>
						<a class="news" href="/news/${groupe.id}">${groupe.header}</a>
					</h4>
				</div>
			</c:forEach>
			<a href="/admin/adminPanel">admin</a>
		</div>
	</div>
</div>
