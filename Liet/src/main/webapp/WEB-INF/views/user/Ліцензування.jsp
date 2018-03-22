<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row border">
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<div class="text">
				<h2>Ліцензування та акредетація</h2>
				<p>
					<a href="/resources/documents/26.pdf"><img src="/resources/image/pdf-icon.png" width="30px">Право на
						здійснення освітньої діяльністі Львівського інституту економіки і туризму 2017</a>
				</p>
				<p>
					<a href="/resources/documents/25.pdf"><img src="/resources/image/pdf-icon.png" width="30px">Протокол №
						59-1 засідання Ліцензійної комісії Міністерства освіти і науки України від 06 липня 2017</a>
				</p>

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





