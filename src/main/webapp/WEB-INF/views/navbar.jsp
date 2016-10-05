
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
     .dropdown{
    cursor: pointer;
    }
    .dropdown:hover .dropdown-menu{
    display: block;
    }
    
    /* Add a gray background color and some padding to the footer */
   
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
   
  
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 

    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
  <br/>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <a href="#" class="navbar-brand"
			style="font-family: Brush script MT, cursive; font-size: 30px; font-color: #FFFFFF; text-shadow: 10px 10px 0px #303030;">Musicaa</a>
    
      <ul class="nav navbar-nav">
       <li class="divider-vertical"></li>
       <li><a href="<c:url value="/" /> "><span
					class="glyphicon glyphicon-home"></span>Home</a></li>
       <li class="divider-vertical"></li>
							 <li><a href="<c:url value="/about" /> ">About Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">	
				<li class="divider-vertical"></li>		 
           <li class="dropdown">
           
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">View & Customize<span class="caret"></span></a>
      <ul class="dropdown-menu">
       
						<li><a href="<c:url value="/admin/additems" />" >View Items </a></li>
						<li><a href="<c:url value="/admin/user" />">View customer </a></li>
						</c:if>		
          </ul>
          </li>  
           
							 
      </ul>
  <ul class="nav pull-right">
						
							   
							   <c:if test="${pageContext.request.userPrincipal.name != null}">
							   
								<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a href="<c:url value="/user/cart" />"><span
					class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
								</c:if>
								
								
								<li class="divider-vertical"></li>
								<li><a><span
					class="glyphicon glyphicon-user"></span> Welcome ${pageContext.request.userPrincipal.name}</a></li>
									<li class="divider-vertical"></li>
									<li><a href="<c:url value="/j_spring_security_logout" />"><span
					class="glyphicon glyphicon-off"></span> Sign Out</a></li>
									</c:if>
									
								 <c:if test="${pageContext.request.userPrincipal.name  == null}">
									<li><a href="<c:url value="/login" />"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li class="divider-vertical"></li>
									<li><a href="<c:url value="/register" />"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
								</c:if>
								
								
							 </ul>
    </div>
  </div>
</nav>