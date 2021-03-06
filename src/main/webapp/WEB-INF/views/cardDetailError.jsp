<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>
<%@include file="/WEB-INF/views/navbar.jsp"%>
<%@include file="/WEB-INF/views/sidebar.jsp"%>
<br>
<br>


<div class="col-sm-1"></div>
<div class="col-sm-7">
       
                   <form:form action="${pageContext.request.contextPath}/cardDetail/${cartId}" method="post"
                   commandName="carddetail">
                   
                   <div class="panel panel-default ">
           <div class="panel-heading center">Payment details</div>
    <div class="panel-body">
					
					<div class="sol-sm-12">
					<div class="col-sm-6">
					  <div class="control-group">
					  <label class="control-label">Card Type</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardType" cssStyle="color: #ff0000"/>
						<form:select path="cardType">
			    		<form:option value="" label="----Please Select------" />
			    		<form:options items="${cardTypeList}" />
						</form:select>
						</div>
						</div>
					  <div class="control-group">
					  <label class="control-label">Card Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardNumber" cssStyle="color: #ff0000"/>
						<form:input path="cardNumber" id="name" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Expiry Date</label>
						<div class="controls docs-input-sizes">
						<form:errors path="expiryMonth" cssStyle="color: #ff0000"/>
						 <form:select path="expiryMonth">
				            <form:option value="" label="MM" />
				    		<form:options items="${expiryMonthList}" />
							</form:select>
							</div>
							<div class="control-group">
							<div class="controls docs-input-sizes">
							<form:errors path="expiryYear" cssStyle="color: #ff0000"/>
							<form:select path="expiryYear">
				    		<form:option value="" label="YYYY" />
				    		<form:options items="${expiryYearList}" />
							</form:select>
						</div>
						</div>
						</div>
						</div>
						<div class="col-sm-6">
						<div class="control-group">
					  <label class="control-label">CVV2/CVC2 Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cvNumber" cssStyle="color: #ff0000"/>
						<form:password path="cvNumber" id="cvnumber" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Name ON Card</label>
						<div class="controls docs-input-sizes">
						<form:errors path="nameOnCard" cssStyle="color: #ff0000"/>
						<form:input path="nameOnCard" id="nameoncard" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">ATM Pin</label>
						<div class="controls docs-input-sizes">
						<form:errors path="atmPin" cssStyle="color: #ff0000"/>
						<form:password path="atmPin" id="pin" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label >Total Amount : Rs. ${grandTotal}</label>
						</div>
						</div>
						<div class="col-sm-12 center">
						<div class="col-sm-3"></div>
						<div class="span2">
					  <input type="submit" value="Pay Now" class="btn btn-primary pull-left">
						 </div>
						 <div class="span1">
					 	<a href="<c:url value="/" />" class="btn btn-danger pull-left">Cancel</a>
					    </div>
				</div>
        </div>
        </div>
        </div>
        </div>
        
        </form:form>

 <div class="col-sm-12">
		<br>
		<br>
		<br>
		<br>
<%@include file="/WEB-INF/views/footer.jsp" %></div>

