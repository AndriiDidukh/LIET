<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Факультет туризму, готельної та ресторанної справи</h2>
				<h3>Декан факультету - к.е.н.,Банера Надія Петрівна</h3>
				<p>
					<img src="/resources/image/fthrb2.jpg" class="picture"><br>Факультет туризму, готельної та ресторанної
					справи один з найбільших і найпопулярніших у структурі Інституту. Накопичений досвід, високий професіоналізм
					викладачів, динаміка розвитку, реальна конкурентоспроможність випускників дозволили факультету стати провідним
					центром підготовки національних кадрів в індустрії гостинності.
				</p>
				<p>Цілями діяльності факультету є:</p>
				<p>– задоволення потреб у кваліфікованих фахівцях з вищою освітою для галузі туризму, готельно-ресторанного
					бізнесу, лікувально-оздоровчих закладів;</p>
				<p>– організація та проведення прикладних і пошукових, наукових досліджень в галузі туризму, харчових технологій
					та впровадження їх у діяльність підприємств;</p>
				<p>– задоволення потреб особистості в інтелектуальному, культурному і моральному розвитку.</p>
				<p>На факультеті туризму, готельної та ресторанної справи здійснюється підготовка фахівців за такими
					спеціальностями та спеціалізаціями:</p>

				<p>241 «Готельно-ресторанна справа» (спеціалізація «Готельно-ресторанний бізнес»);</p>

				<p>242 «Туризм» (спеціалізація «Управління туристичною діяльністю»);</p>

				<p>181 «Харчові технології» (спеціалізації «Технологія оздоровчого та профілактичного харчування», «Технології в
					ресторанному господарстві»).</p>
				<p>Підготовку фахівців здійснюють три випускові кафедри:</p>
				<ul class="navig">
					<li class="main-menu"><a href="">Кафедри</a> <a href="/KTRS">Туризму і готельної справи </a> <a href="/KGRS">Готельно
							ресторанної справи</a> <a href="/KHTRS">Харчових технологій і ресторанної справи</a></li>
				</ul>
				<p>
					<img src="/resources/image/fthrb3.jpg" class="picture">Практичні навики студенти отримують у спеціалізованих
					лабораторіях: інноваційних технологій в туризмі; готельної справи і хостел; харчових технологій, виробництва
					продукції та ресторанного обслуговування; ресторанного та готельного устаткування; мікробіології та фізіології
					харчування.
				</p>

				<p>До найважливіших пріоритетів в організації навчальної роботи факультету віднесено організацію практичної
					підготовки студентів. З цією метою укладено договори з базами практики – провідними підприємствами індустрії
					гостинності.</p>

				<p>На факультеті активно працюють органи студентського самоврядування, які організовують
					національно-патріотичні, культурно-мистецькі, розважальні заходи та благодійні акції.</p>

				<p>Розвинена освітня інфраструктура, інформаційна база, достатній бібліотечний фонд з електронним каталогом,
					електронними підручниками, навчально-методичним забезпеченням дисциплін, комп’ютерною мережею, доступом до
					Інтернету сприяють високій якості навчання студентів Львівського інституту економіки і туризму.</p>
				<p><b>Контактна інформація:</b></p>
				<p>Адреса: м. Львів, вул. Л. Українки, 39</p>
				<p>тел.: (032) 235-57-72</p>
				<p>e-mail: parikashdekanat@gmail.com</p>
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





