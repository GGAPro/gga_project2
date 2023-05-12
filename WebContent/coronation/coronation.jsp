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
	<div class="content">
		<section class="coron_1">
			<div>
				<img src="http://localhost:9000/test_gga/images/carcoronation.png">
			</div>
			<div class="con">
				<p>광고&대관 문의</p>
			</div>
		</section>
		<section class="coron_2">
			<div>
				<p>자유로 자동차극장에서는 다양한 광고 프로젝트와
					기업 행사, 단체 관람 이용이 가능합니다.</p>
			</div>
			<div>
				<p>동호회, 기업, 학교, 소모임, 종교 행사 등
					자유로 자동차극장에서 특별한 행사를 주최해보세요 !</p>
			</div>
			<div>
				<p>궁금하신 사항은 위 연락처로 언제든지 문의주세요! 감사합니다!</p>
			</div>
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

	<!-- content:송지웅  -->

	<!-- footer -->
	<iframe src="http://localhost:9000/gga_test2/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	<!-- footer -->	

</body>
</html>