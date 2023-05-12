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
section.notice table {
	margin:auto;
} 

table tr:last-child {
	border:1px solid white;
}

table tr:last-child nav ul {
	margin-top:30px;
	justify-content:center;
}

table tr{
	text-align:center;
}

table td:nth-child(2){
	text-align:left;
}
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
	<div class="board_title">
		<img src="http://localhost:9000/gga_test2/images/noticetitle.png">
		</div>
		<section class="notice">
			<table class="table table-bordered" style="width: 90%;">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일자</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="notice_content.jsp">[전주객사]제24회 전주국제영화제 개최 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a>[상암월드컵경기장]23년 5월 축구 경기 일정에 따른 주차 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a>[수원] 우대 요금 변경 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>4</td>
					<td><a>[사건 읽는 영화관] 프로그램 순서 변경 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>5</td>
					<td><a>[청라지젤] 운영시간 임시 조정 안내(4/24~4/25)</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>6</td>
					<td><a>게임존 서비스 운영 잠정 중단 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>7</td>
					<td><a>[미사강변] 4월 15일 화재경보기 오작동 발생 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>8</td>
					<td><a>[코엑스]23년 4월 24일 <드림> 시사회 진행에 따른 고객 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>9</td>
					<td><a>[상암월드컵경기장]23년 4월 22일(토) K리그 축구 경기에 따른 주차안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td>10</td>
					<td><a>안드로이드 ‘메가박스 앱’ 정상화 안내</a></td>
					<td>123</td>
					<td>2023-04-27</td>
				</tr>
				<tr>
					<td colspan="5">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span></a>
							</li>
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item">
							 <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
					</td>
				</tr>
			</table>
		</section>
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