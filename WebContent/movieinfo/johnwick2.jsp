<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test2/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
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
.john {
	width:450px;
	height:700px;
}
table img{
	height:50px;
	width:117px;
	margin:0 50px 50px 0;
}
.orderbtn{
	width:200px;
	heigth:110px;
	margin:50px 125px;	
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
		<div class="content">
			<!-- <section class="movie_info1"> -->
				<div class="row">
					<div class="col">
						<img class="john" src="http://localhost:9000/gga_test2/images/johnwick.jpg">
					</div>
					<div class="col">
						<table>
							<tr>
								<th><img src="../images/desctitle.png"></th>
								<td>존윅 4</td>
							</tr>
							<tr>
								<th><img src="../images/descdate.png"></th>
								<td>2023년 4월 12일</td>
							</tr>
							<tr>
								<th><img src="../images/descdirector.png"></th>
								<td>채드 스타헬스키</td>
							</tr>
							<tr>
								<th><img src="../images/descactor.png"></th>
								<td>키아누 리브스</td>
							</tr>
							<tr>
								<th><img src="../images/descgenre.png"></th>
								<td>범죄, 액션, 스릴러, 느와르, 서스펜스, 피카레스크</td>
							</tr>
							<tr>
								<th><img src="../images/descrun.png"></th>
								<td>169분 (2시간 49분 5초)</td>
							</tr>
							<tr>
								<th><img src="../images/descgrade.png"></th>
								<td>94% 만족</td>
							</tr>
						</table>
					</div>
				</div>
			
			<div>
				<a href="http://localhost:9000/gga_test2/order/order.jsp">
					<img class="orderbtn" src="../images/orderbtn.png"></a>
			</div>
			<!-- </section> -->
			
			<section class="movie_info2">
			<div>
				<table border="1">
					<tr>
						<td>죽을 위기에서 살아난 '존 윅'은
	'최고 회의'를 쓰러트릴 방법을 찾아낸다.<br>
	
	비로소 완전한 자유의 희망을 보지만,
	NEW 빌런 '그라몽 후작'과 전 세계의 최강 연합은
	존 윅의 오랜 친구까지 적으로 만들어 버리고,<br>
	
	새로운 위기에 놓인 존 윅은
	최후의 반격을 준비하는데…
	
	레전드 액션 블록버스터 <존 윅>의 새로운 챕터가 열린다!</td>
					</tr>
				</table>
				<!-- <table border="1">
					<tr>
						<th>영화설명</th><td>영화설명</td>
					</tr>
				</table> -->
			</div>
			<div>
				<iframe width="1000" height="450" src="https://www.youtube.com/embed/uMliWmbDDAk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			</section>
			<div class="still_cut">
				<img src="http://localhost:9000/gga_test2/images/stillcut.jpg" >
			</div>
			<section class="movie_info3">
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut1.jpg">
					<img alt="cut1" src="http://localhost:9000/gga_test2/images/johncut1.jpg" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut2.jpg">
					<img alt="cut2" src="http://localhost:9000/gga_test2/images/johncut2.jpg" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut3.jpg">
					<img alt="cut3" src="http://localhost:9000/gga_test2/images/johncut3.jpg" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut4.jpg">
					<img alt="cut4" src="http://localhost:9000/gga_test2/images/johncut4.jpg" width="250" height="210">
				</a>
			</div>		
			
			</section>
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
</body>
</html>