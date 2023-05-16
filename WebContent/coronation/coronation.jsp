<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://localhost:9000/test_gga/css/mycgv.css" type="text/css">
</head>
<body>
		<!-- header -->
		<jsp:include page="../header.jsp" />
	<!-- header -->

	<!-- content:송지웅  -->
	<div class="container">
		<div class="ask_title">
		<img src="http://localhost:9000/gga_test2/images/ask.png">
		</div>
		<section class="coron_1">
		</section>
			<div class="corondetail">
				<img src="http://localhost:9000/gga_test2/images/corondetail.png">
			</div>
		<section class="coron_2">
			<div class="coron_input">
				<ul>
				<li>
					<label>이름</label>
					<input type="text" class="name">
				</li>
				<li>
					<label>연락처</label>
					<input type="text" class="phone"> - 
					<input type="text" class="phone"> - 
					<input type="text" class="phone">
				</li>
				<li>
					<label>규모</label>
					<input type="text" class="name">
				</li>
				<li>
					<label>문의내용</label>
					<textarea name="coroncontent" placeholder="* 200자 이내 작성"></textarea>
				</li>
				</ul>
			</div>
		</section>
		<section class="coron_3">
		</section>
	</div>
	<div>
		<section class="enroll">
			<button type ="button">신청하기</button>
		</section>
	</div>

	<!-- content:송지웅  -->

	<!-- footer -->
	<iframe src="http://localhost:9000/gga_test2/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	<!-- footer -->	

</body>
</html>