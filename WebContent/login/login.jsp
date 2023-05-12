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
	<div class="login_title">
		<img src="http://localhost:9000/gga_test2/images/logintitle.png">
		</div>
		<section class="login">
				<form name="loginForm" action="#" method="get" class="loginForm">
					<ul>
						<li>
							<label>아이디</label>
							<input type="text" name="id">
						</li>
						<li>
							<label>비밀번호</label>
							<input type="password" name="pass">
						</li>
						<li>
							<a href= "http://localhost:9000/gga_test2/index.jsp">
							<img src="http://localhost:9000/gga_test2/images/loginbtn.png"></a>
							<a href= "http://localhost:9000/gga_test2/join/join.jsp">
							<img src="http://localhost:9000/gga_test2/images/joinbtn.png"></a>
						</li>
						<li>
							<span><a href="#">아이디 찾기></a></span>
							<span><a href="#">비밀번호 찾기></a></span>
						</li>
					</ul>
				</form>
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