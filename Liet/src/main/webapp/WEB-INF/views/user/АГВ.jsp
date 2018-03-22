<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Адміністративно гоподарський відділ</h2>
				<img src="/resources/image/agv1.jpg" width="70%">
				<p><b>Контактна інформація</b></p>
				<p>Адреса:</p>
				<p>79007, м. Львів,</p>
				<p>Вул. Менцинського, 8</p>
				<p>тел. 032 255 75 33</p>
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
