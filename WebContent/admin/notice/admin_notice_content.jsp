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
section.admin_notice table {
	text-align:center;
	margin:auto;
}
.binput{
	width:95%;
	border-color:#ddd;
}
.btextarea{
	width:95%;
	border-color:#ddd;
}
.table td {
text-align:left;
}
.table tr:last-child td {
text-align:center;
}
</style>
<script>
function cdelete(){
	if(window.confirm("정말로 삭제하시겠습니까?")){
		
	}
}

function cupdate(){
	if(window.confirm("정말로 수정하시겠습니까?")){
		window.location.href="admin_notice_update.jsp";
	}
}
</script>
<body>
	<!-- header -->
	<header>
		<jsp:include page="../../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
		<section class="admin_notice">
			<h1>관리자 - 공지사항</h1>
			<form name="writeForm" action="#"  method="get">
				<table class="table table-bordered" style="width: 90%;">
					<tr>
						<th>제목</th>
						<td>[전주객사]제24회 전주국제영화제 개최 안내</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							메가박스 전주객사지점입니다.<br>
							제24회 전주국제영화제기간 상영 안내 드립니다.<br><br>
							
							영화제 기간 동안, 영화제 출품작 상영으로 인하여 일반 영화 상영이 일시 중단됩니다.<br>
							아래 내용을 확인하시어 영화관 이용 시 참고 부탁드립니다.<br><br>
							
							1. 일정: 2023년 04월 27일(목) ~ 2023년 05월 06일(토) (총 10일 간)<br>
							2. 장소: 전주객사지점 전 상영관 (10개관)<br>
							3. 주최: 전주국제영화제<br><br>
							
							전주객사지점은 05월 03일(수)부터 일반 영화를 상영하오니 고객 여러분의 양해 부탁드립니다.<br><br>
							
							영화제 출품작 관람을 원하는 고객께서는 영화제 홈페이지를 통해<br>
							상영일정확인 및 예매가 가능하오니 참고 부탁드립니다.<br>
							( ※ 전주 국제영화제 홈페이지: https://www.jeonjufest.kr )<br><br>
							
							감사합니다.
						</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>1000</td>
					</tr>
					<tr>
						<th>작성일자</th>
						<td>2023-04-18</td>
					</tr>					
					<tr>
						<td colspan="4">
							<button class="btn btn-outline-secondary" type="button" onclick="cupdate()">수정하기</button>
							<button class="btn btn-outline-secondary" type="button" onclick="cdelete()">삭제하기</button>
							<a href="admin_notice_list.jsp">
								<button class="btn btn-outline-secondary" type="button">이전으로</button></a>

						</td>				
					</tr>
				</table>
			</form>
		</section>
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