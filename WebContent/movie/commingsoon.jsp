<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGA_Test1</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test1/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
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

	/* 	h1{
			border:3px solid blue;
			width:1500px; margin:auto;
			}
		.buttons{
			border:3px solid red;
			width:1500px; margin:auto;
			padding:0;
			}
		.buttons button{
			border:3px solid hotpink;
			padding: 30px 30px 0 30px;
			text-align:center;
			background:white;
			color:black;
			font-size:30px;
			hover : pink;
			border-radius:12px;
			} */
		.buttons button:hover {
			  background-color: #e1bee7;
			 
			}
	/* 	.moviemenu {
			border:3px solid blue;
			width:1500px; margin:auto;
			overflow:hidden;
			padding:10px 0 50px 0;
			}
		.menu1{
			border:5px solid yellow;
			width:1500px; margin:auto;
			overflow:hidden;
			padding:0 0 0 23px;
			}
			*/
		.card {
	        float:left;
	        margin:auto;
	        text-align:center;
	   /*      width: 300px;
  			height: 700px; */
	        display:inline-block;
	        }
	        /*
	        .card img{
	        border:3px solid pink;
  			width: 330px;
  			height: 490px;
  			display:inline-block;
  			margin:0; padding:0;
			}
*/
			img {
			  height: 350px;
			  width: 100%;
			} 
			.dday{
				color:mediumvioletred;
			}
			
			.orderbtn{
				height:50px;
				width:160px;
			}
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />	
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container">
		<div class="movie_titleimg">
		<img src="http://localhost:9000/gga_test1/images/movietitle.png">
		</div>
			<nav class="buttons">
			<a href="http://localhost:9000/gga_test1/movie/movie_menu.jsp"><img src="http://localhost:9000/gga_test1/images/moviechart2.png" class="btn-outline-secondary"></a>
		<a href="http://localhost:9000/gga_test1/movie/commingsoon.jsp"><img src="http://localhost:9000/gga_test1/images/commingsoon.png" class="btn-outline-secondary2"></a>
				<!-- <button type="button" class="btn btn-outline-secondary"><a href="http://localhost:9000/gga_test1/movie/movie_menu.jsp">무비차트</a></button>
				<button type="button" class="btn btn-outline-secondary"><a href="http://localhost:9000/gga_test1/movie/commingsoon.jsp">커밍쑨</a></button> -->
			</nav>
		<nav class="menu1">
			<div class="row">
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/demonslayer.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">귀멸의 칼날</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-5</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/interstellar.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">인터스텔라</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-3</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/1917.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">1917</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-3</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/johnwick.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">존 윅 4</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-3</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="card">
						  <img src="http://localhost:9000/gga_test1/images/topgun.jpg" class="card-img-top" alt="...">
						  <div class="card-body">
						    <h5 class="card-title">탑 건 : 매버릭</h5>
						    <p class="card-text">개봉예정일 : 2023.10.15<p>
						    <p class="dday">D-3</p>
						    <a href="http://localhost:9000/gga_test1/order/order.jsp">
								<img class="orderbtn" src="../images/neworderbtn.png"></a>
						  </div>
						</div>
					</div>
					<div class="col">
						<div class="card">
						  <img src="http://localhost:9000/gga_test1/images/tenet.jpg" class="card-img-top" alt="...">
						  <div class="card-body">
						    <h5 class="card-title">테넷</h5>
						    <p class="card-text">개봉예정일 : 2023.10.15<p>
						    <p class="dday">D-3</p>
						    <a href="http://localhost:9000/gga_test1/order/order.jsp">
								<img class="orderbtn" src="../images/neworderbtn.png"></a>
						  </div>
						</div>
					</div>
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/supermario.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">슈퍼마리오</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-3</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
				<div class="col">
					<div class="card">
					  <img src="http://localhost:9000/gga_test1/images/showman.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h5 class="card-title">위대한 쇼맨</h5>
					    <p class="card-text">개봉예정일 : 2023.10.15<p>
					    <p class="dday">D-3</p>
					    <a href="http://localhost:9000/gga_test1/order/order.jsp">
							<img class="orderbtn" src="../images/neworderbtn.png"></a>
					  </div>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- content -->


	<!-- footer -->
	<footer>
		<iframe src="http://localhost:9000/gga_test1/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	</footer>
	<!-- footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>