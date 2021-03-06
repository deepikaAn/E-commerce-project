<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<%@include file="/WEB-INF/views/sidebar.jsp"%>
<br>
<br>

<div class="col-sm-8 margin-bottom center"> 
					<h3>Items in your cart</h3>
					</div>
					<br>
<div class="col-sm-8 margin-left10" ng-app="addToCartApp">
	 
	 <div class="row margin-left25" ng-controller = "addToCartCtrl" ng-init="retrieveCart('${cartId}')">
        <table class="table table-bordered table-striped fs13" >
		  <thead>
			  <tr>
				
				<th>Image</th>
				<th class="width110">Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Price(in Rs.)</th>
				<th>Action</th>
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
					 	<td class="span1"><img style="height:150px;width:150px" src="<c:url value="/resources/images/{{items.item.itemId}}.png" /> " alt="image"/></td>
						<td>{{items.item.itemName}}</td>
						<td>{{items.item.itemPrice}}</td>
						<td>{{items.quantity}}</td>
						<td>{{items.totalPrice}}</td>
						<td><a href="#" class="btn btn-danger btnAction" ng-click="removeItemFromCart(items.item.itemId)">
							<span class="glyphicon glyphicon-remove"></span>remove</a></td>
					</tr>
			  <tr>
                    <td></td>
                    <td></td>
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>{{GrandTotalOfItems()}}</td>
                    <td></th>
                </tr>	  
			</tbody>
		  </table>
		  
		  
<center>

          <div class="row">
		  <div class="span3">
             <a href="<spring:url value="/" />" class="btn btn-primary center">Continue Shopping</a>
			</div>	
			<div class="span3">
             <a href="<spring:url value="/order/${cartId}"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
			</div>	  
			<div class="span2">
           <a class="btn btn-danger center" ng-click="clearCartItems()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
			</div>		  
			
        </div>
		</div>
      </div>     
</center>
<br>
<br>
<script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
<br>
<br>
<div class="col-sm-12">
<br>
<br>
<%@include file="/WEB-INF/views/footer.jsp" %></div>