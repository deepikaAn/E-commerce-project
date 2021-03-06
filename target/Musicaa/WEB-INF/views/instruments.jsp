
<%@include file="/WEB-INF/views/menu.jsp"%>



<div class="col-sm-8 margin-bottom center"> 
					<h3>Products List</h3>
					</div>
<div class="col-sm-8" ng-app="cartApp">
	 <div class="row margin-left25">
        <table class="table table-bordered table-striped fs13 ">
		  <thead>
			  <tr>
				<th >Image</th>
                <th class="width110">Product Name</th>
                <th>Category</th>
                <th>Description</th>
                <th class="width90">Price(in Rs.)</th>
                <th  class="width90">Action</th>
			</tr>
			</thead>
			<tbody>
				<c:forEach items="${items}" var="items">
                <tr>
                    <td class="span1"><img src="<c:url value="/resources/images/${items.itemId}.png" /> " style="height:150px; width:200px" /></td>
                    <td>${items.itemName}</td>
                    <td>${items.itemCategory}</td>
                    <td>${items.itemDescription}</td>
                    <td>${items.itemPrice}</td>
                    <td ><a href="<spring:url value="/admin/additems/showitem/${items.itemId}" />" class="btn btn-primary btnAction" >View</a>
                    	<a href="<spring:url value="/admin/item/editItem/${items.itemId}" />" class="btn btn-primary btnAction"> Edit</a>
                        <a href="<spring:url value="/admin/item/deleteItem/${items.itemId}" />" class="btn btn-danger btnAction" >Delete</a>
                    </td>
                </tr>
            </c:forEach>
			</tbody>
		  </table>

		  <div class="span3">
             <a href="<spring:url value="/admin/item/addItem" />" class="btn btn-primary">Add Product</a>
			</div>		  


