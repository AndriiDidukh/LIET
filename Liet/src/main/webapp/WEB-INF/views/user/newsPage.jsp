<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>${newsPage.header}</h2>
				<p>${newsPage.text}</p>
				<c:forEach items="${pictures}" var="pc">
					<img src="/images/news/${pc.id}${pc.path}?version=${pc.version}" width="60%">
				</c:forEach>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/brflag.jpg" width="100%"></a>
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
