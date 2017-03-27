<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/Views/header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<div class="container-wrapper">
 <div class="container">
 <section>
 <div class="jumbotron">
 <div class="container">
 <h1>Invalid Cart!</h1>
 </div>
 </div>
 </section>

 <section class="container">
 <p><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>
 </section>

<%@ include file="/WEB-INF/Views/footer.jsp" %>
</div>
</div>
</body>
</html>

