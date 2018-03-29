<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Distance education schedule</h2>
				<h3>Faculty of tourism, hotel and restaurant business</h3>
				<p>
					<a href="/resources/documents/21.docx"><img src="/resources/image/downloads-icon.png" width="30px">Download
						Schedule ЗФТГРС 2 terms</a>
				</p>
				<p>
					<a href="/resources/documents/22.docx"><img src="/resources/image/downloads-icon.png" width="30px">Download
						Schedule ЗФТГРС Masters ЗГРС ЗТ ЗХТ</a>
				</p>
				<p>
					<a href="/resources/documents/23.docx"><img src="/resources/image/downloads-icon.png" width="30px">Download
						Schedule ettitute session 4-3 term ФТГРС</a>
				</p>
				<p>
					<a href="/resources/documents/24.docx"><img src="/resources/image/downloads-icon.png" width="30px">Download
						Schedule winter session 4-3 term ФТГРС</a>
				</p>
				<p>
					<a href="/resources/documents/25.docx"><img src="/resources/image/downloads-icon.png" width="30px">Download
						Schedule winter session 2-5 terms</a>
				</p>
				<h3>Faculty of management, commodity and commercial activities</h3>
				<p>
					<a href="/resources/documents/31.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						ЗФМТКД ettitute ЗМО-17 masters</a>
				</p>
				<p>
					<a href="/resources/documents/32.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						ЗФМТКД ettitute ЗТТП-17 masters</a>
				</p>
				<p>
					<a href="/resources/documents/33.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						ЗФМТКД ettitute 3 term</a>
				</p>
				<p>
					<a href="/resources/documents/34.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						ЗФМТКД ettitute 4 term</a>
				</p>
				<p>
					<a href="/resources/documents/35.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						test-exam(winter) 3 term ЗФН ФМТКД</a>
				</p>
				<p>
					<a href="/resources/documents/36.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						test-exam(winter) 4 term ЗФН ФМТКД</a>
				</p>
				<p>
					<a href="/resources/documents/37.pdf"><img src="/resources/image/downloads-icon.png" width="30px">Download
						ЗФМТКД test-exam(winter) session 17-18р_5к (masters)</a>
				</p>

				<h3>Accounting and economics faculty</h3>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/distanceSchedule"> <img src="/resources/image/flag1.png" width="100%"></a>
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