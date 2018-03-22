<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Рада студентського самоврядування</h2>
				<p>
					<i>Голова Ради студентського самоврядування Львівського інституту економіки і туризму - студент факультету
						туризму, готельної та ресторанної справи Мука Андрій (Т-2012).</i><br>
					<img src="/resources/image/222.jpg">	
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





