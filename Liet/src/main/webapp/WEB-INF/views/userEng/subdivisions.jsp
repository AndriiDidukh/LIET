<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Subdivisions</h2>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/NMV"> <img src="/resources/image/image.png" class="picture3"> <br>Department of <br>education
							and<br> methodology<br>
						</a>

					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VNMS"> <img src="/resources/image/p1.jpg" class="picture3"> <br>Department of <br>Research
							<br>and International <br>Cooperation
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/FEV"> <img src="/resources/image/image2.png" class="picture3"> <br>Financial<br>and
							economic<br> department
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VK"> <img src="/resources/image/people2.jpg" class="picture3"> <br>Personnel <br>department
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/AGV"> <img src="/resources/image/image3.png" class="picture3"> <br>Administrative <br>and
							supply <br>department
						</a>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<a href="/VPN"> <img src="/resources/image/image4.png" class="picture3"> <br>Department of<br>practical
							<br>education
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<div class="row marginLeft " style="background-color: rgba(0, 0, 0, 0.0);">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<a href="/department"> <img src="/resources/image/flag1.png" width="100%"></a>
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
