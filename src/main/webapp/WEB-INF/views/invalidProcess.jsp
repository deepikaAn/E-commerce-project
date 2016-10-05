<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<%@include file="/WEB-INF/views/sidebar.jsp"%>
<div class="col-sm-8" >
	 
	<h1> Invalid Cart</h1><br>
                <div class="span5">
             <a href="<spring:url value="/instruments/allItems" />" class="btn btn-primary">Continue Shopping</a>
			</div>	
</div>
<div class="col-sm-12">
<%@include file="/WEB-INF/views/footer.jsp"%>
</div>