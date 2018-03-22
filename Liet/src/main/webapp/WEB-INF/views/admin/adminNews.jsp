<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Новини</h1>

		<h5>Додати новину</h5>
		<form:form action="/admin/news" method="post" class="form-inline" modelAttribute="form" enctype="multipart/form-data">
			<form:hidden path="id" />
			<div class="form-group">
				<div>
					<form:input path="header" class="form-control" placeholder="Заголовок" />
				</div>
				<div>
					<form:input path="text" class="form-control" placeholder="Текст" size="50%" />
				</div>
				<button type="submit" class="btn btn-primary">Додати</button>
				<br> <br>
			</div>
		</form:form>

		<c:forEach items="${news}" var="groupe">
			<div>${groupe.header}</div>
			
		</c:forEach>
	</div>
</body>
</html>