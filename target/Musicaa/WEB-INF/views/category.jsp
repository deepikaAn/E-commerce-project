<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>Categories</title>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<br>

  <div class="col-sm-3"></div>
  
  <div class="col-sm-6">
			<div class="panel panel-default" style="background-color:#e6e6e6" >
           <div class="panel-heading" style="background-color:#bfbfbf">Add Category</div>
    <div class="panel-body">

	
	<c:url var="addAction" value="/category/add"></c:url>

	<form:form action="${addAction}" commandName="category">
		 
          <div class="control-group">
			
				
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					
				</c:choose>
			</div>
			
				<div class="control-group">
					  <label class="control-label">Name</label><form:errors path="name" cssStyle="color: #ff0000;" />
						<div class="controls docs-input-sizes">
						<form:input path="name" id="name" class="form-Control" patttern =".{5,7}" required="true" title="name should contains 5 to 7 characters"/>
						</div>
						</div>
			<div class="control-group">
							  <label class="control-label">Description</label><form:errors path="description" cssStyle="color: #ff0000;" />
								<div class="controls docs-input-sizes">
								 <form:textarea path="description" id="description" class="form-Control" patttern =".{6,7}" required="true" title="Description should contains 6 to 7 characters"/>
								</div>
						</div>
		
				<div class=" no_margin_left"><c:if test="${!empty category.name}">
						<input type="submit" class="btn btn-info"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
					<center>
						<input type="submit" class="btn btn-default" value="<spring:message text="Add Category"/>" />
					</center>
					</c:if></div>
			</div>
			
		
	</div>
	</form:form>
	</div>
	</div>
	</div>
	
	
	<div class="col-sm-12">
			<div class="panel panel-default" style="background-color:#e6e6e6">
           <div class="panel-heading" style="background-color:#bfbfbf">Category List</div>
    <div class="panel-body">

	
	
	<c:if test="${!empty categoryList}">
		<table class="table">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>