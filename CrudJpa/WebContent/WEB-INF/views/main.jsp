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
		i {
			font-size: 15px;
			
		}
		
		button {
			width: 130px;
		}
		
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
	
		.center-block {
			display: block;
  			margin-right: auto;
  			margin-left: auto;
		}
		
		.form-container {
			display: flex;
    		justify-content: center;
    		align-items: center;
		}
		
		.form-container .fill-full-width {
			flex: 1;
		}
		
		.row-height {
			height: 500px;
		}
						
		.border-radius-padding {
			border: 1px solid;
    		padding: 8px;
    		border-radius: 5px;
		}
		
		.library-name-section {
			display: flex;
    		font-size: 45px;
    		color: white;
    		align-items: center;
		}
		
		.last-column {
			display: flex;
			
		}
		
		.last-column button {
			flex: 1;
		}
				     
		td.last-column:first-child {
			margin-right: 8px;
		}
		
		span > i {
		    color: white;
		}
		span > input {
		    background: none;
		    color: white;
		    padding: 0;
		    border: 0;
		}
		
		table{
			table-layout: fixed;
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