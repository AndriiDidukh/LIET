<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Administration</h2>
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<p>Administration of the Lviv Institute of Economy and Tourism is a permanent working body, which is
						established in accordance with art. 36 in the Law of Ukraine "On Higher Education", Statute of the Lviv Institute
						of Economy and Tourism, Regulations on the Administration of Lviv Institute of Economy and Tourism. Administration
						carries out the collective management with the institution for compliance with the basic directions of its
						activities with the legislation of Ukraine on education, regulations of the Ministry of Education and Science of
						Ukraine, the Statute of the LIET.</p>
					<p>The efficient monitoring and identification of the solutions of such tactical issues are among the tasks of
						the administration:</p>
					<p>- the organization of educational process, research, personnel, financial, and economic activity;</p>
					<p>- the implementation of the state educational standards;</p>
					<p>- the cultivation of high ethical standards in the team of LIET, the atmosphere of goodwill and mutual
						respect between the leaders, teachers, and students;</p>
					<p>- the support for the creation of necessary conditions for effective learning process, research and
						professional activities, social protection of the teaching staff of LIET;</p>
					<p>- the activity aimed at strengthening ties between education, science and practice;</p>
					<p>- the development of LIET cooperation with educational institutions of Ukraine and abroad.</p>
					<p>For systematic discussion and agreement on the main issues of the Institute efficient activity according to
						its Statute and Regulations on the administration of the Lviv Institute of Economics and Tourism to appoint for
						2015 / 2016 academic year the following staff of the Administration:</p>
					<p>- BOCHAN Igor Omelyanovich, Doctor of Economics, professor, rector of the Institute – the head of the
						administration ;</p>
					<p>- Anna Dutka, Doctor of Pedagogy, professor, Pro-rector of Teaching and Educational Work in LIET.</p>
					<p>- PAN΄KIV Natalia Yevhenivna, Ph.D. in biology, vice-rector in scientific work and tourism;</p>
					<p>- KIT Volodymyr Ivanovich, vice-rector in administrative and housekeeping work;</p>
					<p>- LYSYANCHUK Galina Zakharivna, chief accountant, head of the Department of accounting and economic work;</p>
					<p>- SHPAKOVYC H Nina Yuriyivna, head of the Personnel and Legal Support Department;</p>
					<p>- VITER Oleksandra Mykolaivna, PH.D. in economics, associate professor, dean of the Accounting and Economic
						Faculty;</p>
					<p>- SVELEBA Natalia Andriyivna, PH.D. in economics, associate professor, dean of the Tourism, Hotel and
						Restaurant Business Faculty;</p>
					<p>- OZYMOK Galyna Volodymyrivna, Ph.D. in technology, associate professor, dean of the Management, Commodity
						Research and Commercial Activity Faculty;</p>
					<p>- ZIŃ Lubomira Mykhaylivna, methodologist (chief organizer) in physical training and sports tourism;</p>
					<p>- FRANKIV Iryna Yaroslavivna, PH.D. in history, library manager;</p>
					<p>- Volodymyr Moroz, PhD in Economics, Head of the trade union</p>
					<p>- Mariia Nadych, assistant lecturer, Head of practical training department,secretary of the Institute
						administration;</p>
					<p>- Yulia Senko, senior lecturer, Acting Head of theoretical study and methodology department</p>
					<p>- Oksana Pohorilko, senior lecturer , Head of the tourist information centre</p>
					<p>- Andriy Muka, student of the group T-12, Head of the students' government institution</p>
					<p>Contact Information:</p>
					<p>Ukraine, Lviv, 8 Mentsynskyi Street</p>
					<p>tel / fax: (032) 2722094</p>
					<p>e-mail: lebk@org.lviv.net</p>
				</div>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href=""> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/administrationEng"> <img src="/resources/image/brflag.jpg" width="100%"></a>
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