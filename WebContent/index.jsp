<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<script src ="http://localhost:9000/gga_test2/js/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test2/js/gga_jquery.js"></script>
<script src="http://localhost:9000/gga_test2/js/weather_api.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
	<!-- 부트스트랩 -->
</head>
<style>
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}

@media (min-width: 992px) {
  .container {
    width: 1000px;
  }  
}
.section2{
	display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: stretch;
    flex-basis: 0;
    flex-grow: 1;
    max-width: 100%;
    margin:50px 0;
}

.section2 .card{
		width: 190px;
        float: left;
        border:1px solid white;
}

.section2 img{
	height:230px;
}
.section4{
    margin-top: 20px;
}
</style>
<script>
	$(document).ready(function(){
		$("img").click(function(){
			let movieid = $(this).attr("id");
			$(location).attr("href", "http://localhost:9000/gga_test2/movieinfo/movieinfo.jsp?movieid="+movieid)
		});
	});
</script>
<body>
	<!-- header -->
		<jsp:include page="header.jsp" />
	<!-- header -->
	
		<!-- content -->
	<div class="container text-center">
		<div class="section1">
			<div class="col" >
			<div class="ggamovietitle">
			    <img src="http://localhost:9000/gga_test2/images/ggamovietitle.png">
			    </div>
			    <iframe justify-content-center width="100%" height="500px" 
			    src="https://www.youtube.com/embed/cGNUpsevAk4?mute=1&autoplay=1"></iframe>
			</div>
		</div>
		
		<div class="section2">
		 		<div class="nowtitle">
			    <img src="http://localhost:9000/gga_test2/images/nowtitle.png">
			    </div>
		 	<div class="row row-cols-1 row-cols-md-5 mb-5 justify-content-center">
		 		<div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
				        	<img src="http://localhost:9000/gga_test2/images/darknight.jpg" 
				        		class="card-img-top" id="M_0001">
			        	<div class="card-body">
			          	<p class="card-text">다크나이트</p>
			          	<a href="http://localhost:9000/gga_test2/order/order.jsp" class="orderbtn">
						<img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
			        	</div>
			     	</div>
		    	</div>
		    	<div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<img src="http://localhost:9000/gga_test2/images/dune.jpg" 
			        		class="card-img-top" id="M_0003">
			        	<div class="card-body">
			          	<p class="card-text">듄</p>
			          	<a href="http://localhost:9000/gga_test2/order/order.jsp" class="orderbtn">
						<img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
			        	</div>
			     	</div>
		    	</div>
		    	<div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<img src="http://localhost:9000/gga_test2/images/inception.jpg" 
			        		class="card-img-top" id="M_0004">
			        	<div class="card-body">
			          	<p class="card-text">인셉션</p>
			          	<a href="http://localhost:9000/gga_test2/order/order.jsp" class="orderbtn">
						<img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
			        	</div>
			     	</div>
		    	</div>
		    	<div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<img src="http://localhost:9000/gga_test2/images/slamdunk.jpg" 
			        		class="card-img-top" id="M_0009">
			        	<div class="card-body">
			          	<p class="card-text">슬램덩크</p>
			          	<a href="http://localhost:9000/gga_test2/order/order.jsp" class="orderbtn">
						<img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
			        	</div>
			     	</div>
		    	</div>
		    	<div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<img src="http://localhost:9000/gga_test2/images/door.jpg" 
			        		class="card-img-top" id="M_0002">
			        	<div class="card-body">
			          	<p class="card-text">스즈메</p>
			          	<a href="http://localhost:9000/gga_test2/order/order.jsp" class="orderbtn">
						<img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
			        	</div>
			     	</div>
		    	</div>
		    	<!-- <div class="col">
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<img src="http://localhost:9000/gga_test2/images/rings.jpg" 
			        		class="card-img-top" alt="...">
			        	<div class="card-body">
			          	<p class="card-text">반지의 제왕</p>
			        	</div>
			     	</div>
		    	</div> -->
		
			</div>
		</div>
		
		<div class="section3">
			  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="http://localhost:9000/gga_test2/images/bannerimg2.jpg" class="d-block w-100" style="height: 200px;" alt="...">
				    </div>
				  <div class="carousel-item">
				      <img src="http://localhost:9000/gga_test2/images/bannerimg3.jpg" class="d-block w-100" style="height: 200px;" alt="...">
				  </div>
				    <div class="carousel-item">
				      <img src="http://localhost:9000/gga_test2/images/footerimg2.jpg" class="d-block w-100" style="height: 200px;" alt="...">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
			</div>
		</div>
		
		<div class="section4">
			<div class="row">
			    <!-- <h1 class="display-4">오시는길</h1> -->
			    <div class="mapimg">
			    <img src="http://localhost:9000/gga_test2/images/map.png">
			    </div>
			</div>
			<div class="row">
				<div class="col-9">
			      <div id="map" style="width:100%; height:400px;"></div>
			    </div>
			    <div class="col-3">
				    <div class="weather_api"> 
			    	<div>
			    		<button type="button" class="btn_weather_date" id="today">오늘</button>
			    		<button type="button" class="btn_weather_date" id="tomorrow">+1</button>
			    		<button type="button" class="btn_weather_date" id="after">+2</button>
						<div class="weather_icon" id="weather_icon">
						<!-- 날씨API 들어가는 자리 -->
						</div>			    	
			    	</div>
			    	
			    	</div>
			    	<div class="card mb-4 rounded-3 shadow-sm">
			        	<div class="card-body">
			          	<p class="card-text">차타고 오세용</p>
			        	</div>
			     	</div>
			    </div>
			 </div>
		</div>
	</div>
	<!-- content -->


	<!-- footer -->
	<footer>
		<iframe src="http://localhost:9000/gga_test2/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	</footer>
	<!-- footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	41da9f6853bb6c551d69442f2f310e83"></script>
	    <script type="text/javascript">
	
			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(37.49463712100352, 127.02989249594765), //지도의 중심좌표.
				level: 2 //지도의 레벨(확대, 축소 정도)
			};
		
			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
			
			var markerPosition  = new kakao.maps.LatLng(37.49463712100352, 127.02989249594765); 

			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			marker.setMap(map);
	</script>
</body>
</html>