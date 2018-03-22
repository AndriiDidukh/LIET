<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Розклад Заочної форми навчання</h2>
				<h3>Факультет туризму, готельно ресторанної справи</h3>
				<p>
					<a href="/resources/documents/21.docx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ЗФТГРС 2 курси</a>
				</p>
				<p>
					<a href="/resources/documents/22.docx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад ЗФТГРС Магістри ЗГРС ЗТ ЗХТ</a>
				</p>
				<p>
					<a href="/resources/documents/23.docx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад наст. сесії 4-3 курс ФТГРС</a>
				</p>
				<p>
					<a href="/resources/documents/24.docx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад зимової сесії 4-3 курс ФТГРС</a>
				</p>
				<p>
					<a href="/resources/documents/25.docx"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						Розклад зимової сесії 2-5курси</a>
				</p>
				<h3>Факультет менеджменту, товарознавства та комерційної діяльності</h3>
				<p>
					<a href="/resources/documents/31.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						ЗФМТКД настановча ЗМО-17магістр</a>
				</p>
				<p>
					<a href="/resources/documents/32.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						ЗФМТКД настановча ЗТТП-17магістр</a>
				</p>
				<p>
					<a href="/resources/documents/33.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						ЗФМТКД настановча 3курс</a>
				</p>
				<p>
					<a href="/resources/documents/34.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						ЗФМТКД настановча 4курс</a>
				</p>
				<p>
					<a href="/resources/documents/35.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						зал-екз(зим) 3курс ЗФН ФМТКД</a>
				</p>
				<p>
					<a href="/resources/documents/36.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						зал-екз(зим) 4курс ЗФН ФМТКД</a>
				</p>
				<p>
					<a href="/resources/documents/37.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Скачати
						ЗФМТКД зал-екз (зимова) сесія 17-18р_5к (магістри)</a>
				</p>
				
				<h3>Бухгалтерсько-економічний Факультет</h3>
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