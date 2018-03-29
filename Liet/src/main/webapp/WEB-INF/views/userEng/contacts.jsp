<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Contacts</h2>
				<div class="row frame">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
						<p>Address:</p>
						<p>79007, Lviv,</p>
						<p>8 Mentsynskyi Street</p>
						<p>Tel.: (032) 255-45-47,</p>
						<p>Tel./Fax: (032) 255-46-94</p>
						<p>e-mail: lebk@org.lviv.net</p>
						<p>Web-сайт: http://www.liet.lviv.ua</p>
						<p>р/р 35227269002471</p>
						<p>MFO 820172</p>
						<p>ZKPO 01566212</p>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<p>Dormitory:</p>
						<p>Lviv, 4 Zolota Street</p>
						<p>tel.: 233-62-00</p>
						<p>Hostel:</p>
						<p>Lviv, 2 Arkhypenka Street</p>
						<p>tel.: 275-77-91</p>
						<img src="/resources/image/image6.png" width="100%">
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft" style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6"></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/contacts"> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/brflag.jpg" width="100%"></a>
				</div>
			</div>
			<h2>News</h2>
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
