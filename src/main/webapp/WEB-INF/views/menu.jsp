<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<div class="col-sm-2">
			    <div class="page-header">
				<h1><font color="#862d86">				
					Customize:</font>
				</h1>
				</div>
				
					<ul class="nav">
						<li><a href="<spring:url value="/admin/additems" />" style="color:black">View Products</a></li>
						
						<li><a href="<spring:url value="/admin/item/addItem" />" style="color:black">Add Products</a></li>
						<li><a href="<c:url value="/admin/user" />" style="color:black">View Customers</a></li>
							
				</ul>
			
				
			</div>
<div class="col-sm-7">
<br>
<div id="categories">
	<c:if test="${clickedCategories==true}">
	<%@include file="category.jsp" %>
	</c:if>
	</div>
</div>
<div class="col-sm-8">
<br>
<div id="customers">
	<c:if test="${clickedCustomers==true}">
	<%@include file="userManagement.jsp" %>
	</c:if>
	</div>
</div>

	
             
             
             
			
				      
				