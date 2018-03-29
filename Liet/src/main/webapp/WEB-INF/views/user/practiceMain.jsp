<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Особливості практичної підготовки</h2>
				<p>
					<img src="/resources/image/pr4.JPG" width="100%">
				</p>
				<p>Поєднання теоретичної й практичної підготовки, інтеграція навчання з науково-дослідною роботою сприяють
					практичній спрямованості навчання, активному пошуку й впровадженню нетрадиційних форм і методів навчання студентів,
					формуванню цілісної особистості майбутніх фахівців і професіоналів. Організація практичної підготовки
					регламентується «Положенням про проведення практики студентів вищих навчальних закладів України», затвердженим
					наказом Міністерства освіти України від 08.04.1993р., №93 та «Положенням про організацію практики здобувачів вищої
					освіти у Львівському інституті економіки і туризму», затвердженого ухвалою Вченої Ради інституту, протокол №1 від
					30.09. 2015 року.</p>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/practiceMainEng"> <img src="/resources/image/brflag.jpg" width="100%"></a>
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