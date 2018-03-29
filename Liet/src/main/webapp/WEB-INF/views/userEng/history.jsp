<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>History</h2>
				<p>
					<img src="/resources/image/5.jpg" class="picture">History of Lviv Institute of Economy and Tourism reaches
					its origins in 1899, the founding of the institution called imperial-royal Trade school. During the 1899-1900 the
					school was temporarily based in the home of Stanislav Skarbek (modern building of M.Zankovetska Theater). In 1900,
					for Trade school was allocated a building on the 39 Skarbkivska Street (the building is one of the faculties of
					LIET – 39 Lesia Ukrainka Street). And soon, in 1902-1903, Trade school gained the status of imperial-royal Trading
					Academy. Within the walls of our school training for retail sector and service was conducted. Traders, merchants,
					transcribers were taught here, they studied German and French. The school had an interesting history: during the
					First World War, the team was forced to emigrate to Vienna, returning to Ukraine it temporarily stopped teaching
					students because of the military devastation. It was only in 1919 that imperial-royal Trading Academy resumes its
					job and gets the name of Trading Academy in Lviv from the Polish state authorities. Place of residence -
					39Skarbkivska Street (now 39 L. Ukrainka Street).
				</p>
				<p>In September 1939, on the basis of the trade school and academy a College of Soviet Trade and Technical
					School of Catering were organized. During World War II, technical colleges temporarily suspended their operations
					and restored it in September 1944 by order of the Ministry of Trade of USSR № 90 of 19.09.1944.</p>
				<p>On March 24, 2004 by the order № 171-r of the Cabinet of Ministers of Ukraine on the proposal of Science of
					Ukraine, Lviv Institute of Economy and Tourism was formed - as a leading state higher educational establishment of
					tourism science development and training the personnel for the development of the tourism, hotel and restaurant
					business. Indeed, as the rector of the institute, Professor I.O. Bochan sys, "Tourism is an effective means of
					human values. This is a particular kind of human activity, which is the motivation of knowing the world with its
					potential tourism resources. Studying the experience of the global economy, we argue that tourism as a sector and
					scientific knowledge is the most effective source of material and spiritual development of society.</p>
				<p>For a period of intensive development, the institute has gained the recognition it deserves in the region and
					beyond. Each year over a hundred students go on the international internship for 4-6 months to the USA, Turkey,
					Greece, Egypt, Switzerland, and Poland. The Institute collaborates with the Higher School of Tourism and Hotel
					Business (Switzerland), Institute of Higher Education "Martino Martini" (Mezzolombardo, Italy), B. Markewicz Higher
					State Technical and Economical School (Jaroslav, Poland), Alexander Institute of Technological Education (Greece).
				</p>
				<p>It became a tradition that Ukrainian competitions of scientific works in "Tourism" and "Hotel Business" are
					held annually at the Institute. In the walls of our institute are also held the sittings of the
					scientific-methodical commission on tourism, which attracts scholars from all over Ukraine.</p>
				<p>The Institute is now developing as a leading institution of higher education profile of the scientific
					development of tourism and training of professionals in tourism with specific advantages in the labor market: with
					impeccable knowledge of the specialty, foreign languages ​​and information technologies. Lviv Institute of Economy
					and Tourism has modern material bases, namely: four educational buildings, two dormitories equipped with modern
					technical facilities and Internet access. Students have the opportunity through specialized laboratories, a
					library, an Internet-café for intensive foreign language learning, Tourist Information Center (TIC), Exhibition
					Center “Tours and tourist products for Lviv citizens and guests'“ receive virtual information on the state of
					economy and tourism, hotel and restaurant infrastructure in Ukraine and abroad. The Institute formed a creative
					scientific and pedagogical staff. Seven of the eleven graduating department are headed by Professors, PhDs
					(Doctors). All specialties are profile and closely related to the sphere of tourism and hotel and restaurant
					business. The content of specialists training is economized based on the dynamic development of tourism as a social
					and economic phenomenon of our time. From the walls of the institute come specialists in tourism studies, tour
					operators and travel agents, managers in accommodation and catering, economists-analysts, commodity experts,
					accountants- financial experts, who have profound ideological and professionally economic knowledge, professional
					command of foreign languages ​​and information technologies. They, as well as the iinstitute, have great prospects,
					because the social sphere, according to experts, provides the opportunity to work 2/3 of the working population of
					the world.</p>
				<p>The Institute trains bachelors and specialists, masters in relevant areas, specialties and specializations,
					including:</p>
				<p>- Tourism;</p>
				<p>- Hotel and restaurant business;</p>
				<p>- Management of Organizations (specialization: management of the hotel business and tourism, manager of the
					hotel and restaurant business);</p>
				<p>- Food Technology and Engineering (specialization: technology of healthy and preventive nutrition);</p>
				<p>- Accounting and Auditing (specialization: accounting and finance in the hotel and restaurant business and
					tourism);</p>
				<p>- International Economics (specialization: International tourism)</p>
				<p>- Commodity and Commerce activity (specialization: management of commodity systems and merchandising);</p>
				<p>- Commodity and expertise in customs.</p>
				<p>In the institute, the professionals in full-time, part-time, state order and contract are trained.</p>
				<p>The address of the Lviv Institute of Economy and Tourism: 29007 , Lviv, 8 Mentsynsky Street, tel. (032)
					255-45-47 , (032) 261-63-08, website: www.liet.lviv.ua</p>
				<p>Our higher educational establishment is open for those seeking to gain fundamental knowledge, prestigious
					profession, find their place on the tourist market of Ukraine.</p>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/history"> <img src="/resources/image/flag1.png" width="100%"></a>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/eng"> <img src="/resources/image/brflag.jpg" width="100%"></a>
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





