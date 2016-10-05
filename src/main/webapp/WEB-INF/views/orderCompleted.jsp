<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<%@include file="/WEB-INF/views/sidebar.jsp"%>
<br>
<br>
<div class="col-sm-3"></div>

	 <div class="col-sm-8">
					<h2>Thank you for Shopping!!!</h2>
					<br>
					<h3>Your order has been placed successfully.</h3>
<br>
                    <p>Your order will be shipped soon!</p>
                    <br>
                <div class="span5">
             <a href="<spring:url value="/" />" class="btn btn-warning">Continue Shopping</a>
			</div>	
</div>

 