<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Міжнародне стажування</h2>
				<p>Міжнародне стажування студентів є сучасною дієвою та ефективною формою підготовки фахівців у Львівському
					інституті економіки і туризму.</p>
				<p>З метою підвищення ефективності міжнародної співпраці Інституту та якості практичної підготовки фахівців у
					ЛІЕТ налагоджено міжнародне фахове стажування та практичну підготовку студентів ЛІЕТ в готельно-відпочинкових
					комплексах, ресторанних підприємствах, туристичних фірмах та інших організаціях, пов’язаних із туризмом. Це
					забезпечує можливість отримати безцінний досвід роботи в закордонних організаціях, відвідати нові країни,
					удосконалити комунікаційні навики та знання іноземної мови, що формує суттєві конкурентні переваги майбутніх
					випускників на ринку праці.</p>
					<img src="/resources/image/in1.jpg" width="100%">
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





