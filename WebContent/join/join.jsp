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
	<div class="join_title">
		<img src="http://localhost:9000/gga_test2/images/jointitle.png">
		</div>
	<section class="join">
			<form name="joinForm" action="#" method="get">
				<ul>
					<li>
						<label>아이디</label>
						<input type="text" name="id" class="input1">
						<button type="button" class="idCheckbtn">중복체크</button>
					</li>
					<li>
						<label>비밀번호</label>
						<input type="password" name="pass" class="input1" placeholder="8자 이상 영문(대소문자 구분), 특수문자 포함">
					</li>
					<li>
						<label>비밀번호 확인</label>
						<input type="password" name="cpass" class="input1" placeholder="8자 이상 영문(대소문자 구분), 특수문자 포함">
					</li>
					<li>
						<label>이름</label>
						<input type="text" name="name" class="input1">
					</li>
					<li>
						<label>성별</label>
						<input type="radio" name="gender"><span>남자</span> 
						<input type="radio" name="gender"><span>여자</span>
					</li>
					<li>
						<label>이메일</label>
						<input type="text" name="email1" > @
						<input type="text" name="email2" >
						<select>
							<option value="default">선택</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="google.com">google.com</option>
							<option value="daum.net">daum.net</option>
						</select>
					</li>
					<li>
						<label>차량번호</label>
						<input type="text" name="carnum" class="input1" placeholder= "본인 차량번호 정확하게 기입">
					</li>
					<li>
					<li>
						<label>휴대폰</label>
						<input type="radio" name="tel" value="skt"><span>SKT</span>
						<input type="radio" name="tel" value="kt"><span>KT</span>
						<input type="radio" name="tel" value="lgu+"><span>LG U+</span>
						<select name="phone1">
							<option value="default">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
						</select>
						 -<input type="text" name="phone2">
						 -<input type="text" name="phone3">				
					</li>
					<li>
						<label>영화 장르</label>
						
						<input type="checkbox" name="genre" value="범죄/스릴러"><span>범죄/스릴러</span>
						<input type="checkbox" name="genre" value="멜로/로맨스"><span>멜로/로맨스</span>
						<input type="checkbox" name="genre" value="판타지/코미디"><span>판타지/코미디</span>
						<input type="checkbox" name="genre" value="액션/SF"><span>액션/SF</span><br>
						<input type="checkbox" name="genre" value="전쟁/재난"><span>전쟁/재난</span>
						<input type="checkbox" name="genre" value="느와르/첩보"><span>느와르/첩보</span>
						<input type="checkbox" name="genre" value="애니메이션"><span>애니메이션</span>
						<input type="checkbox" name="genre" value="가족/음악"><span>가족/음악</span>
						
					</li>
					<li>
						<label>자기소개</label>
						<textarea name="intro" placeholder="* 200자 이내 작성"></textarea>
					</li>
				</ul>
					<div class="joinbtn">
						<a href= "http://localhost:9000/gga_test2/login/login.jsp">
						<img src="http://localhost:9000/gga_test2/images/joinbtn2.png"></a>
						<a href= "http://localhost:9000/gga_test2/join/join.jsp">
						<img src="http://localhost:9000/gga_test2/images/resetbtn.png"></a>
					</div>			
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