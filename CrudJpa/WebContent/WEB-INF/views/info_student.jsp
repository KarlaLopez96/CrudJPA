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
			margin-right: 8px;
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
	
	</style>
	
</head>
<body>
	<nav>
		<div class="row">
			<div class="col-md-1 form-container">
				<i class="fas fa-book-reader"></i>
			</div>
			<div class="col-md-5 library-name-section">
				<span>Biblioteca Municipal</span>	
			</div>
			<div class="col-md-6 library-name-section">
				<span style="font-size: 20px;">										
					Edición de estudiante
				</span>	
			</div>
		</div>
		
	</nav>
	<div class="row row-height">
		<div class="col-md-2">
			
		</div>
		
		<div class="col-md-8 form-container" style="padding-top:150px;">
			<div class="fill-full-width border-radius-padding">
				<form:form action="${pageContext.request.contextPath}/info_student" method="POST" modelAttribute="estudiante">
				  <div class="row">
					<div class="col-md-12">												
						   <div class="form-group">
							 	<label for="articleNameInput">Nombre</label>
							 	<label style="float: right;">${estudiante.getName()}</label>
							 	<form:input type="text" class="form-control"  path="name" name="articleNameInput"/>							 	
							 	<form:errors path="name" cssStyle="color: #E81505"/>
							 	<form:hidden path="id"/>					 						 	
						 	</div>
						   					   
						 
						 <div class="form-group">
						 	<label for="articleNameInput">Apellido</label>
						 	<label style="float: right;">${estudiante.getSurname()}</label>
						 	<form:input type="text" class="form-control"  path="surname" name="articleNameInput" />
						 	<form:errors path="surname" cssStyle="color: #E81505"/>					 						 	
						 </div>
						 											
						   <div class="form-group">
							 	<label>Estado</label>
							 	<label style="float: right;">${estudiante.getActiveStatus()}</label>
							 	<br/>
							 	<form:radiobutton path="active" value="true"/> Activo
							 	<form:radiobutton path="active" value="false"/> Inactivo
							 								 						 						 
						 	</div>
						   					   
						 
						 <div class="form-group">
						 	<label for="articleNameInput">Edad</label>
						 	<label style="float: right;">${estudiante.getAge()}</label>
						 	<form:input type="text" class="form-control"  path="age" name="articleNameInput" />
						 	<form:errors path="age" cssStyle="color: #E81505"/>					 						 	
						 </div>
					 </div>
					</div>
					
					 <div class="row">
					 	<div class="col-md-5 form-container">					 		
					 							 								 		
					 						 		
					 	</div>
					 	<div class="col-md-2 form-container">
					 		<button type="submit" class="btn btn-success"><i class="fas fa-edit"></i>Editar</button>			 						 							 						 						 
					 		
					 	</div>
					 	<div class="col-md-5 form-container">					 		
					 							 								 		
					 						 		
					 	</div>
					 </div>					 					
				</form:form>
			</div>
		</div>
		
		<div class="col-md-2">			
				<button class="btn btn-success button-fixed" onclick="location.href='${pageContext.request.contextPath}/'">Regresar</button>						
		</div>
	</div>
	
</body>
</html>