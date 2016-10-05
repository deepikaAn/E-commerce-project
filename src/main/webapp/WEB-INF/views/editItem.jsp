
<%@include file="/WEB-INF/views/menu.jsp"%>
<br>
<br>
<br>
<div class="col-sm-8">
				<form:form action="${pageContext.request.contextPath}/admin/item/editItem" method="post"
                   commandName="item" enctype="multipart/form-data">
				   <form:hidden path="itemId" value="${item.itemId}" />
                   <div class="col-sm-12">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-10">
                   <div class="panel panel-default">
           <div class="panel-heading text-center" >Edit Products</div>
    <div class="panel-body">
					<div class="col-sm-6">
					  	<div class="control-group">
					  	<label class="control-label">Name</label><form:errors path="itemName" cssStyle="color: #ff0000;" />
						<div class="controls docs-input-sizes">
						<form:input path="itemName" id="name" class="form-Control" value="${item.itemName}"/>
						</div>
						</div>
						<div class="control-group">
							  <label class="control-label">Description</label><form:errors path="itemDescription" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:textarea path="itemDescription" id="description" class="form-Control" value="${item.itemDescription}"/>
								</div>
						</div>
						<div class="control-group">
					  	<label class="control-label">Category</label><form:errors path="itemCategory" cssStyle="color: #ff0000;" />
						<div class="controls docs-input-sizes">
		   				<form:select path="itemCategory">
    						<form:option value="" label="----Please Select------" />
    						<form:options items="${categoryList}" />
	     					</form:select>
						</div>
		   			  	</div>
						 
						
						<div class="control-group">
							  <label class="control-label">Unit In Stock</label><form:errors path="itemInStock" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:input path="itemInStock" id="unitInStock" class="form-Control" value="${item.itemInStock}"/>
								</div>
						</div>
						
						</div>
						<div class="span4">
						
						
						
						<div class="control-group">
							  <label class="control-label">Upload Picture</label>
								<div class="controls docs-input-sizes">
								 <form:input id="itemImage" path="itemImage" type="file" class="form:input-large" />
								</div>
						</div>
						<div class="control-group">
							  <label class="control-label">Price</label><form:errors path="itemPrice" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:input path="itemPrice" id="itemPrice" class="form-Control" value="${item.itemPrice}"/>
								</div>
						</div>
						<div class="control-group">
							  <label class="control-label">Status</label>
								<div class="controls docs-input-sizes">
								 <form:radiobutton path="itemStatus" id="status"
                                                             value="active" />&nbsp;&nbsp;Active &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           						 <form:radiobutton path="itemStatus" id="status"
                                                             value="inactive" />&nbsp;&nbsp;Inactive
								</div>
						</div>
						<div class="span2 no_margin_left">
						 <input type="submit" value="Submit" class="btn btn-primary pull-left"  />
						 </div>
						 <div class="span1 no_margin_left">
					 	<a href="<c:url value="/admin/additems" />" class="btn btn-danger">Cancel</a>
					    </div>
					    </div>
					    </div>
					    </div>
					    </div>
					    </form:form>
				</div>
						

        
