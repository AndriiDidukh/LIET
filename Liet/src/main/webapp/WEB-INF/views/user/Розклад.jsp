<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Розклад денної форми</h2>
				<h3>Факультет туризму, готельно ресторанної справи</h3>
				<p>
					<a href="/resources/documents/1.xlsx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ФТГРС 2017-2018 1 семестр</a>
				</p>
				<p>
					<a href="/resources/documents/2.xlsx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ФТГРС 2017-2018 2 семестр</a>
				</p>
				<h3>Факультет менеджменту, товарознавства та комерційної діяльності</h3>
				<p>
					<a href="/resources/documents/3.xlsx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ФМТКД 2017-2018 1 семестр</a>
				</p>
				<p>
					<a href="/resources/documents/4.xlsx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ФМТКД 2017-2018 2 семестр</a>
				</p>
				<h3>Бухгалтерсько-економічний Факультет</h3>
				<p>
					<a href="/resources/documents/5.xls"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад БЕФ 2017-2018 1 семестр</a>
				</p>
				<p>
					<a href="/resources/documents/6.xlsx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад БЕФ 2017-2018 2 семестр</a>
				</p>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/scheduleEng"> <img src="/resources/image/brflag.jpg" width="100%"></a>
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