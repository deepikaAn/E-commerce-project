<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script  type="text/javascript" src="jquery.js"></script>
<script src="jquery.elevatezoom.js" type="text/javascript"></script>
<%@include file="/WEB-INF/views/header.jsp"%>


<%@include file="/WEB-INF/views/navbar.jsp"%>

<%@include file="/WEB-INF/views/sidebar.jsp"%>
<br>
<script type="text/javascript">
    function zoomin(){
        var myImg = document.getElementById("imgg");
        var currHeight = myImg.clientHeight;
            currWidth = myImg.clientWidth;
        if(currHeight == 500 && currWidth == 500){
            alert("Maximum zoom-in level reached.");
        } else{
            myImg.style.height = (currHeight + 50) + "px";
            myImg.style.width = (currWidth + 50) + "px";
        } 
    }
    function zoomout(){
    	var myImg = document.getElementById("imgg");
        var currHeight = myImg.clientHeight;
            currWidth = myImg.clientWidth;
        if(currHeight == 100 && currWidth == 100  ){
            alert("Maximum zoom-out level reached.");
        } else{
            
            myImg.style.height = (currHeight - 50) + "px";
            myImg.style.width = (currWidth - 50) + "px";
        }
    }
</script>


<div class="col-sm-8 center margin-bottom"> 
					<h2>PRODUCT DETAILS</h2>
					</div>
					<br>
        <div class="container" ng-app = "addToCartApp">
                <div class="row">
	 <div class="span5">
		<img style="width:300px; height:400px" src="<c:url value="/resources/images/${item.itemId}.png"  />"  id="imgg" alt="image"/>
		<br/>
		<br/>
		<center><p> Zoom:
        <button type="button" onclick="zoomin()">+</button>
        <button type="button" onclick="zoomout()">-</button>
    </p></center>
		</div> 
	  
	<div class="span6">

		<div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>${item.itemName}</span><br>
				<strong>Description:</strong> <span>${item.itemDescription}</span><br>
				
				<strong>Category:</strong> <span>${item.itemCategory}</span><br>
				
			</address>
		</div>	
				
		<div class="span8">
			<h2>
				<strong>Price: Rs. ${item.itemPrice}</strong> <br><br>
			</h2>
		</div>	
		
					<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/instruments/allItems" />
                     <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                        <c:set var="url" scope="page" value="/admin/additems" />
                    </c:if>
					
		
						<div class="span8">
							<div class="span4 no_margin_left">
									<p ng-controller="addToCartCtrl">
									<a href="<c:url value="${url}" />" class="btn btn-primary">Back</a>
									<c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
										<a href="#" class="btn btn-primary"
										   ng-click="addItemToCart('${item.itemId}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a>
										<a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
									</c:if>
								</p>
							</div>	
							
			
						</div>	
		
						<div class="span8">
						
							
						</div>	
		
		 			</div>	

  				</div>


                    
                    
                </div>

        <script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
        
        <%@include file="/WEB-INF/views/footer.jsp" %>
