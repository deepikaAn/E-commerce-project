<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>


<div class="col-sm-2"></div>
				<form:form commandName="order" class="form-horizaontal">
				<div class="col-sm-12">
				   <div class="col-sm-3"></div>
				   <div class="col-sm-6">
                   <div class="panel panel-default ">
          
    <div class="panel-body">
					
					<div class="col-sm-12">
						<div class="col-sm-6 no_margin_left">
						<legend>Your Personal Details</legend>
					  <div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls docs-input-sizes">
            				<form:input path="cart.usersDetail.userFullName" id="userFullName" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.userEmail" id="userEmail" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Phone</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.userPhone" id="userPhone" class="form-Control"/>
						</div>
					  </div>					 

					  </div><span>
					  <div class="col-sm-6">
					<legend>Billing Address </legend>
					 
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.houseNumber" id="houseNumber" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.addressLine1" id="addressLine1" class="form-Control"/>
						</div>
					  </div>	
					  <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <form:input path="cart.usersDetail.billingAddress.addressLine2" id="addressLine2" class="form-Control"/>
						</div>
					  </div>	
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.billingAddress.city" id="city" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <form:input path="cart.usersDetail.billingAddress.state" id="state" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.usersDetail.billingAddress.country" id="country" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<form:input path="cart.usersDetail.billingAddress.zipCode" id="zipCode" class="form-Control"/>
						</div>
					  </div>
					</div>
			
					<div class="col-sm-12 center">
					<div class="col-sm-3"></div>
					 
					  <div class="col-sm-3">
					  <input type="hidden" name="_flowExecutionKey" />
						<input type="submit" value="Continue" class="btn btn-primary" name="_eventId_userInfoProcessCompleted" />
						 </div>
						 <div class="col-sm-3">
					 	<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
					    </div>
					  </div>
					  </div>
					 
					 
					
					  
					  </span>
					  </div>
					  </div>
					  </div>
					  </div>
					    </form:form>
				</div>

			</div>
		</div>
		<div class="col-sm-12">
		<br>
		<br>
		<br>
		<br>
<%@include file="/WEB-INF/views/footer.jsp" %></div>