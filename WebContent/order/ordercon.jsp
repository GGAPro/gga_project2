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
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container">
		<div class="ordercon_title">
		<img src="http://localhost:9000/gga_test2/images/ordercontitle.png">
			<!-- <img src="http://localhost:9000/gga_test2/images/ticket2.png"> -->
		</div>
		
		<div class="ticketcon_bac1">
			<label>제목 :</label>
			<p class="ticketcon_title">반지의 제왕</p><br>
			<label>날짜 :</label>
			<p class="ticketcon_date">4월 26일</p><br>
			<label>시간 :</label>
			<p class="ticketcon_time">10:00</p><br>
			<label>가격 :</label>
			<p class="ticketcon_price">30,000원</p><br>
			<label>예매번호 :</label>
			<p class="ticket_ordernum">1111-1111-1111-1111</p>
		
		</div>
		
		<div class="ticketcon_bac2">
			<label>이름 :</label>
			<p class="ticketcon_name">가즈아</p><br>
			<label>차량번호 :</label>
			<p class="ticketcon_carnum">11가 1111</p><br>
			<label>Email :</label>
			<p class="ticketcon_email">gga1234@gmail.com</p><br>
			<label>전화번호 :</label>
			<p class="ticket_number">010-1111-1111</p><br>
		
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