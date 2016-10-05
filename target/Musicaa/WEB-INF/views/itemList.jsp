
<div>
				 <h2>Popular products</h2><br>
				<li class="thumbnails">
				
				
				<c:forEach items="${items}" var="item">
				<c:if test="${searchCondition != null && searchCondition == item.itemCategory}">
				<li class="col-sm-4">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"></a> <img alt="" style=" height: 200px; width: 210px; 
"
					src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					<div class="caption">
					  <h5>${item.itemName}</h5> 
					  </a>
					</div>
				
				</li>
				</c:if>
				<c:if test="${searchCondition == null }">
				<li class="col-sm-4">
				  <div class="thumbnail">
					<a href="<spring:url value="/instruments/showitem/${item.itemId}" />"> <img alt="" style="height: 200px; width: 250px; 
"
					 src="<c:url value="/resources/images/${item.itemId}.png" /> ">
					 <div class="caption">
					  <h5>${item.itemName}</h5>
					</a>
					</div>
				  
				</li>
				</c:if>
               </c:forEach>
				

			  </ul>
		</div>
		