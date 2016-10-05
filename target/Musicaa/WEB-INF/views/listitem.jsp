<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>

<%@include file="/WEB-INF/views/sidebar.jsp"%>
<br>
<div class="col-sm-8">

				 <h2>PRODUCTS</h2><br>

<ul class="thumbnails">
				
				
				<c:forEach items="${items}" var="item">
				<c:if test="${searchCondition != null && searchCondition == item.itemCategory}">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>Price: ${item.itemPrice}</a><br><br>
					</div>
				
				</li>
				</c:if>
				<c:if test="${searchCondition == null }">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
					<c:if test="${searchCondition == null }">
				<li class="col-sm-3">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style=" height: 200px; width: 210px;" src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5>  Price: Rs. ${item.itemPrice}</a><br><br>
					</div>
				  
				</li>
				</c:if>
               </c:forEach>
				

			  </ul>
			  </div>
			  <div class="col-sm-12">
			  <%@include file="/WEB-INF/views/footer.jsp"%></div>