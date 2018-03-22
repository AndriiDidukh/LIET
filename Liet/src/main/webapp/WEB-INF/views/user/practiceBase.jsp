<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Бази практик</h2>
				<h3><b>Інноваційні інфраструктурні підрозділи інституту:</b></h3>
				<p>
					<img src="/resources/image/pr7.JPG" width="100%">
				</p>
				<h3><b>Провідні підприємства сфери послуг Львова, області та України:</b></h3>
				<p>
					<img src="/resources/image/pr8.JPG" width="100%">
				</p>
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