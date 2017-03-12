<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="Resources/css/header.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>   
	<title>HOME-ShoeRack</title>
</head>
<body>
<div style="background-color:#E8E8E8;">
	<div style="margin-left:0px;margin-top:0px;" class="container">
	<div class="row">
  	<div class="col-lg-4">
  	<img style="width:105%; height:150px;" class="img-responsive" src="Resources/Images/logo.png"  alt="shoes logo"></img>
  	</div>
  	<div  class="col-lg-8">
  	<img style="width:122%; height:150px; class="img-responsive" src="Resources/Images/mainBanner.jpg"  alt="banner"></img>
  	</div>
	</div>
	</div>
	</div>
	<nav class="navbar navbar-default navbar-fixed">
   	<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>  
        <span class="icon-bar"></span>                      
      </button>
     	<a class="navbar-brand" style="font-size:15px;" href="home">HOME
     	<span class="glyphicon glyphicon-home" style=" font-size:15px; color:black;"></span></a>
    </div> 
    		<div class="collapse navbar-collapse" id="myNavbar"> 
   		  <ul class="nav navbar-nav navbar-right">
 		        <li ><a href="#" class="dropdown-toggle" data-toggle="dropdown">MEN <span class="caret"></span>
 		        <img width="22px" src="Resources/Images/fi-male.svg" ></a>
        		<ul class="dropdown-menu">
        		<li><a href="#">Canvas</a></li>
        		<li><a href="#">Sneakers</a></li>
        		<li><a href="#">Leather</a></li>
        		</ul>
        		</li>
        		 <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">WOMEN <span class="caret"></span>
        		<img width="22px"src="Resources/Images/fi-female.svg" ></a>
        		<ul class="dropdown-menu">
        		<li><a href="#">Canvas</a></li>
        		<li><a href="#">Sneakers</a></li>
        		<li><a href="#">Leather</a></li>
        		</ul>
        		</li>
        		<li><a href="#">SALE
         		<span class="glyphicon glyphicon-gift" style="color:black;"></span></a></li>
               <c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>">Login</a></li>
			<li> <a href="<c:url value="/all/registrationForm"></c:url>">Register</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>
			
               
               <li><a href="AboutUs">ABOUT US
         		 <span class="glyphicon glyphicon-user" style="color:black;"></span></a></li>
         		   <c:url var="url" value="/admin/product/productform"></c:url>

<c:if test="${pageContext.request.userPrincipal.name !=null }">
   <!-- http://localhost:8080/project1/admin/product/productform -->
   
   <security:authorize access="hasRole('ROLE_ADMIN')">
   <li><a href="${url }">Add New Product</a></li>
   </security:authorize>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   <li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
</c:if>			
			
         		<li><a href="ContactUs">CONTACT US
         		<span class="glyphicon glyphicon-phone" style="color:black;"></span></a></li>
         		<li><a href="#">CART
          <span class="glyphicon glyphicon-shopping-cart" style="color:black;"></span></a></li>
      	</ul>
    </div>
 </div> 
</nav>
</body>
</html>