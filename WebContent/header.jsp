<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGA_Test1</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test1/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test1/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
		<div class="container">
			<div class="header_section1">
		      	
		      	<div class="header_logo">
		        	<a href="http://localhost:9000/gga_test1/index.jsp" target="_parent">
		        	<img src="http://localhost:9000/gga_test1/images/newlogo.png"></a>
		      	</div>
		      	
		      	<div class="header_menu">
		      	<ul>
			        <li><a href="http://localhost:9000/gga_test1/login/login.jsp" target="_parent" 
			        	>로그인</a></li>
					<li><a href="http://localhost:9000/gga_test1/join/join.jsp" target="_parent" 
						>회원가입</a></li>
					<li><a href="http://localhost:9000/gga_test1/mypage/mypage.jsp" target="_parent" 
						>마이페이지</a></li>
					<li><a href="#">고객센터</a></li>
		      	</ul>
		       </div>
		     </div>
			
			<div class="header_section2">
				<div class="header_menu2">
				<ul>
				      <li><a href="http://localhost:9000/gga_test1/movie/movie_menu.jsp" target="_parent">
				     	영화</a></li>
				      <li><a href="http://localhost:9000/gga_test1/order/order.jsp" target="_parent">
				      	예매</a></li>
			      	  <li class="dropdown">
			          <a class="dropdown-toggle-split" href="#" role="button" 
			         	 data-bs-toggle="dropdown" aria-expanded="false">
			         	 게시판</a>
				          <ul class="dropdown-menu">
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/notice/notice_list.jsp"
				            	target="_parent">공지사항</a></li>
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/board/board_list.jsp" 
				            	target="_parent">커뮤니티</a></li>
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test1/board/faq.jsp"
				            	target="_parent">FAQ</a></li>
				     </ul>
				     </li>
				      <li><a href="http://localhost:9000/gga_test1/coronation/coronation.jsp" target="_parent">
				      대관문의</a></li>
				      <li><a href="#">
				      스토어</a></li>
				      <li><a href="#">
				   		이벤트
				      </a></li>
				          </ul>
				 </div>
			</div>
				      <div class="mov_search">
				      <form class="d-flex" role="search">
				          <input type="text" placeholder=" 영화 제목을 검색해 주세요.">
				          <button type="button"><p>검색</p></button>
				       </form>
				     </div>
			</div>
		</div>
	</header>
	<!-- header -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>