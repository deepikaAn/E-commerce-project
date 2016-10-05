
<%@include file="/WEB-INF/views/menu.jsp"%>

			<div class="col-sm-8">
				<form:form action="${pageContext.request.contextPath}/admin/item/addItem" method="post"
                   commandName="item" enctype="multipart/form-data">
                   <div class="col-sm-12">
                   <div class="col-sm-2"></div>
                   <div class="col-sm-10">
                   <div class="panel panel-default" >
           <div class="panel-heading text-center"style="background-color:#ecc6ec ">Add Products</div>
    <div class="panel-body">
					
					<div class="col-sm-6">
					  <div class="control-group">
					  <label class="control-label">Name</label><form:errors path="itemName" cssStyle="color: #ff0000;" />
						<div class="controls docs-input-sizes">
						<form:input path="itemName" id="name" class="form-Control"/>
						</div>
						</div>
						 <div class="control-group">
							  <label class="control-label">Description</label><form:errors path="itemDescription" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:textarea rows="3" cols="50" path="itemDescription" id="description" class="form-Control"/>
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
						
						
						
						
						</div>
						<div class="col-sm-6">
						
						<div class="control-group">
							  <label class="control-label">Unit In Stock</label><form:errors path="itemInStock" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:input path="itemInStock" id="ItemInStock" class="form-Control"/>
								</div>
						</div>
						
						<div class="control-group">
							  <label class="control-label">Price</label><form:errors path="itemPrice" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:input path="itemPrice" id="price" class="form-Control"/>
								</div>
						</div>
						
						
						
						<div class="control-group">
							  
								<div class="controls docs-input-sizes">
								 <form:radiobutton path="itemStatus" id="status"
                                                             value="active" />&nbsp;&nbsp;Active &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           						 <form:radiobutton path="itemStatus" id="status"
                                                             value="inactive" />&nbsp;&nbsp;Inactive
								</div>
						</div>
						
						<div class="control-group">
							  <label class="control-label">Upload Picture</label>
								<div class="controls docs-input-sizes">
								 <form:input id="itemimage" path="itemImage" type="file" class="form:input-large" />
								</div>
						</div>
						</div>
						
						<div class="col-md-12 center">
						 <input type="submit" value="Submit" class="btn btn-info "  /> &nbsp&nbsp&nbsp&nbsp
						
					 	<a href="<c:url value="/admin/additems" />" class="btn btn-danger">Cancel</a>
					    </div>
					    </div>
					    </div>
					   </div>
					   </div>
					   </div>
					   </form:form>
					 
					    </div>
					    
				
					
				
						
</div>
       