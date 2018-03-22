<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Контакти</h2>
				<div class="row frame">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
						<p>Адреса:</p>
						<p>79007, м. Львів,</p>
						<p>вул. Менцинського, 8</p>
						<p>тел.: (032) 255-45-47,</p>
						<p>тел./факс: (032) 255-46-94</p>
						<p>e-mail: lebk@org.lviv.net</p>
						<p>Web-сайт: http://www.liet.lviv.ua</p>
						<p>р/р 35227269002471</p>
						<p>МФО 820172</p>
						<p>ЗКПО 01566212</p>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<p>Гуртожиток:</p>
						<p>м.Львів, вул. Золота, 4,</p>
						<p>тел.: 233-62-00</p>
						<p>Хостел:</p>
						<p>м.Львів, вул. Архипенка, 2</p>
						<p>тел.: 275-77-91</p>
						<img src="/resources/image/image6.png" width="100%">
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
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
