<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	<style>
		
		nav {
			position: fixed;
			width: 100%;
			height: 75px;
			border: 1px solid black;
			background-color: #01579b;		
			z-index: 5;	
		}
		
		nav div:first-child {
			height: 100%;
		}
		
		nav i {
			font-size: 65px;
		}
		
		.button-fixed {
			position: fixed;
			margin-top: 150px;
		}
		
				
	</style>
	
</head>
<body>
	
	<div class="row row-height">
		<div class="col-md-2">
			
		</div>
		
		<div class="col-md-8 form-container" style="padding-top:150px;">
		<p>${numero}</p>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Activo</th>
						<th>Edad</th>
						<th style="width:100px"></th>						
					</tr>
				</thead>
				<c:forEach items="${estudiantes}" var="estudiante"> 
					<tr>
						<td><c:out value = "${estudiante.getName()}"/></td>
						<td><c:out value = "${estudiante.getSurname()}"/></td>
						<td><c:out value = "${estudiante.getActiveStatus()}"/></td>
						<td><c:out value = "${estudiante.getAge()}"/></td>
						<td class="last-column"><Button style="margin-right: 8px;" onclick="location.href='${pageContext.request.contextPath}/edit?id=${estudiante.getId()}'"><i class="fas fa-edit"></i></Button><Button onclick="location.href='${pageContext.request.contextPath}/delete?id=${estudiante.getId()}'"><i class="fas fa-user-minus"></i></Button></td>						
					</tr>
				</c:forEach>	
			</table>
		</div>
		
		<div class="col-md-2">
			<button class="btn btn-success button-fixed" onclick="location.href='${pageContext.request.contextPath}/create_student'">Nuevo</button>
		</div>
	</div>
	
</body>
</html>