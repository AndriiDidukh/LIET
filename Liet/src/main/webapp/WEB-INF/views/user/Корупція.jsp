<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Запобігання та протидія корупції</h2>
				<h3>
					<b>Нормативно правова база</b>
				</h3>
				<p>ЗАКОН УКРАЇНИ Про запобігання корупції Відомості Верховної Ради (ВВР), 2014, № 49, ст.2056)</p>
				<p>http://zakon2.rada.gov.ua/laws/show/1700-18</p>
				<p>ЗАКОН УКРАЇНИ Про очищення влади</p>
				<p>(Відомості Верховної Ради (ВВР), 2014, № 44, ст.2041)</p>
				<p>http://zakon3.rada.gov.ua/laws/show/1682-18</p>
				<p>ЗАКОН УКРАЇНИ Про засади державної антикорупційної політики в Україні (Антикорупційна стратегія) на 2014-2017
					роки</p>
				<p>(Відомості Верховної Ради (ВВР), 2014, № 46, ст.2047)</p>
				<p>http://zakon0.rada.gov.ua/laws/show/1699-18</p>
				<p>ЗАКОН УКРАЇНИ Про засади запобігання і протидії корупції (Відомості Верховної Ради України (ВВР), 2011, № 40,
					ст.404)</p>
				<p>Закон втратив чинність, крім положень щодо фінансового контролю, які втрачають чинність з початком роботи
					системи подання та оприлюднення відповідно до Закону № 1700-VII від 14.10.2014 декларацій осіб, уповноважених на
					виконання функцій держави або місцевого самоврядування, на підставі Закону № 1700-VII від 14.10.2014, ВВР, 2014, №
					49, ст.2056, з урахуванням змін, внесених Законом № 198-VIII від 12.02.2015</p>
				<p>http://zakon3.rada.gov.ua/laws/show/3206-17</p>
				<p>ЗАКОН УКРАЇНИ Про внесення змін до Закону України "Про засади запобігання і протидії корупції" щодо
					декларантів, які перебувають на військовій службі</p>
				<p>(Відомості Верховної Ради (ВВР), 2015, № 39, ст.373)</p>
				<p>http://zakon2.rada.gov.ua/laws/show/610-19</p>
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





