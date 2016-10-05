
<style>
.carousel-indicators.right {
    
    top: auto;
    bottom: 15px;
    text-align: right;
}
</style>


				<div id="myCarousel" class="carousel slide">
				<div class="carousel-inner">
				  <div class="item w3-animate-fading">
					<img src="<c:url value="/resources/images/cs1.jpg"/>" alt=""/>
					

				  </div>
				  <div class="item w3-animate-fading">
					<img src="<c:url value="/resources/images/12.png"/>" alt=""/>
					
				  </div>

				  <div class="item w3-animate-fading">
					<img src="<c:url value="/resources/images/cs2.png"/>" alt=""/>
				  </div>
				</div>
			
			</div>
			
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("item");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 8000);
}
</script>
