<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Обсяги державного замовлення</h2>
				<p>Мінімальні та максимальні обсяги державного замовлення у 2017 році (освітній рівень бакалавр на базі повної
					середньої освіти)</p>
				<img src="/resources/image/dz1.png" width="100%">
				<p>Мінімальні та максимальні обсяги державного замовлення у 2017 році (освітній рівень магістр на базі рівня
					бакалавр)</p>
				<img src="/resources/image/dz2.jpg" width="100%">
				
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





