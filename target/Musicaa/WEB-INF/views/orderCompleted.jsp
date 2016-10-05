<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>

<br>
<br>
<div class="col-sm-3"></div>

	 <div class="col-sm-8">
					<h2>Thank you for Shopping</h2>
					<h3>Your order submitted successfully.</h3>

                    <p>Your order will be shipped with in three business days!</p>
                <div class="span5">
             <a href="<spring:url value="/" />" class="btn btn-primary">Ok</a>
			</div>	
</div>

 