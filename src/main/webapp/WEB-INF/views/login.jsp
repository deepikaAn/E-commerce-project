<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>


<%@include file="/WEB-INF/views/navbar.jsp"%>
 <style>
footer {
      background-color: #282828;
      color: white;
      padding: 20px;
    }

.form-4 {
    /* Size and position */
    width: 300px;
    margin: 60px auto 30px;
    padding: 10px;
    position: relative;

    /* Font styles */
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
    color: black;
    text-shadow: 0 2px 1px rgba(0,0,0,0);
}

.form-4 h1 {
    font-size: 22px;
    padding-bottom: 20px;
}
.form-4 input[type=text],
.form-4 input[type=password] {
    /* Size and position */
    width: 100%;
    padding: 8px 4px 8px 10px;
    margin-bottom: 15px;

    /* Styles */
    border: 1px solid black; /* Fallback */
    border: 1px solid black;
    background: rgba(0,0,0,0);
    border-radius: 2px;
    box-shadow: 
        0 1px 0 rgba(255,255,255,0.2), 
        inset 0 1px 1px rgba(0,0,0,0.1);
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;

    /* Font styles */
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
    color: black;
    font-size: 13px;
}
.form-4 input::-webkit-input-placeholder {
    color:grey;
    text-shadow: 0 1px 0 rgba(255,255,255,0.1);
}

.form-4 input:-moz-placeholder {
    color: grey;
    text-shadow: 0 1px 0 rgba(255,255,255,0.1);
}

.form-4 input:-ms-input-placeholder {
    color: grey;
    text-shadow: 0 1px 0 rgba(255,255,255,0.1);
}
.form-4 input[type=text]:hover,
.form-4 input[type=password]:hover {
    border-color: #333;
}

.form-4 input[type=text]:focus,
.form-4 input[type=password]:focus,
.form-4 input[type=submit]:focus {
    box-shadow: 
        0 1px 0 rgba(255,255,255,0.2), 
        inset 0 1px 1px rgba(0,0,0,0.1),
        0 0 0 3px rgba(255,255,255,0.15);
    outline: none;
}

/* Fallback */
.no-boxshadow .form-4 input[type=text]:focus,
.no-boxshadow .form-4 input[type=password]:focus {
    outline: 1px solid white;
}
.form-4 input[type=submit] {
    /* Size and position */
    width: 100%;
    
    position:left;
    
    /* Styles */
    background: linear-gradient(rgba(99,64,86,0.5), rgba(76,49,65,0.7));    
    border-radius: 5px;
    border: 1px solid #4e3043;
    box-shadow: 
    	inset 0 1px rgba(255,255,255,0.4), 
    	0 2px 1px rgba(0,0,0,0.1);
    cursor: pointer;
    transition: all 0.3s ease-out;

    /* Font styles */
    color: white;
    text-shadow: 0 1px 0 rgba(0,0,0,0.3);
    font-size: 16px;
    font-weight: bold;
    font-family: 'Raleway', 'Lato', Arial, sans-serif;
}

.form-4 input[type=submit]:hover {
    box-shadow: 
        inset 0 1px black, 
        inset 0 20px 30px black;
}

/* Fallback */
.no-boxshadow .form-4 input[type=submit]:hover {
    background: #594642;
}
.form-4 label {
    display: none;
    padding: 0 0 5px 2px;
    cursor: pointer;
}

.form-4 label:hover ~ input {
    border-color: #333;
}

.no-placeholder .form-4 label {
    display: block;
}

</style>
</head>
<body onload="javascript:window.history.forward(1);">





<form class="form-4" name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post"
									role="form" style="display: block;">
									
               
                 <div class="col-sm-12 center">
                   <c:if test="${not empty msg}">
                
            </c:if>
									<h2 style="margin-left:65px; font-family: Brush script MT, cursive; font-size: 50px; color:  #862d86;text-shadow: 10px 10px 0px #ecc6ec;">Sign In</h2>
									<br/>
									<br/>
									<c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
									<div class="msg">${msg} <br><br></div>
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1"
											class="form-control" placeholder="username" value="">
																				</div>
									<div class="form-group">
										<input type="password" name="password" id="password"
											tabindex="2" class="form-control" placeholder="Password">
									</div>
									
									<div class="form-group">
							
										<div class="row">
										<div class="col-sm-12"></div>
											<div class="col-sm-3"></div>
											<div class="col-sm-6">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn-btn-login" 
												 value="Log In"></div>
												
												
												
												 
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="col-sm-6">
													<a href="#" tabindex="5"
														class="forgot-password">Forgot Password?</a>
												</div>
												<div class="col-sm-6">&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp
												<a href="register" tabindex="5"
														class="new-user"> New User?</a>
												</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>
		
 