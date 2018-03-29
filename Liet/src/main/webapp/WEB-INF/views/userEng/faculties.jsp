<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Faculties and departments</h2>
				<p>European experience shows that the best preparation is provided by highly specialized educational
					establishments which choose a small segment of the market and prepare specialists for it. This idea is repeatedly
					referred to in the educational and scientific process of the Lviv Institute of Economics and Tourism. There are
					three departments in the Institute:</p>
				<p>Department of Tourism, Hotel and Restaurant Business;</p>
				<p>Faculty of Management, Commodity and Commercial activity;</p>
				<p>Accounting and Economics Faculty.</p>
				<p>Institute trains students in such specialties as "Tourism studies" "Hotel and restaurant business," "Food
					Technology" (specialization "Technology of healthy and preventive nutrition"), "Management and Administration"
					(specialization "Management of the hotel business and tourism", "Management of the hotel and restaurant business"),
					"Commodity and commercial activity", "Commodity and expertise in customs" (specialization "Management of the
					commodity systems and merchandising"), "Accounting and auditing", "International economics", creating a closed
					circuit of supplying the tourism industry with personnel.</p>
				<ul class="navig">
					<li class="main-menu"><a href="">Faculties</a> <a href="/FTHRB">Tourism, hotel and restaurant business </a> <a
						href="/BEF">Accounting and economics</a> <a href="/FMTKD">Management, commodity and commercial activities</a></li>
				</ul>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/faculties"> <img src="/resources/image/flag1.png" width="100%"></a>
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