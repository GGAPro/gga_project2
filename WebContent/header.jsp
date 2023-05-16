<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test2/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
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
<!-- <script>
	$(document).ready(function(){
		$("#btnSearch").click(function(){
			if($("#mtitle").val() =="" ){
				alert("영화 제목을 입력해주세요.");
				$("#mtitle").focus();
				return false;
			} else{
				$.ajax({
			          url:"http://localhost:9000/gga_test2/searchProc.jsp?mtitle="+$("#mtitle").val(),
			          success: function(movieid){
			            location.href="http://localhost:9000/gga_test2/movieinfo/movieinfo.jsp?movieid="+movieid; 
			          },
					error:function(){
						alert("상영 예정 없는 영화입니다 다른검색어를 입력해주세요");
					}
				});
			}
		});
	});
</script> -->
<body>
	<!-- header -->
	<header>
		<div class="container">
			<div class="header_section1">
		      	
		      	<div class="header_logo">
		        	<a href="http://localhost:9000/gga_test2/index.jsp" target="_parent">
		        	<img src="http://localhost:9000/gga_test2/images/newlogo.png"></a>
		      	</div>
		      	
		      	<div class="header_menu">
		      	<ul>
			        <li><a href="http://localhost:9000/gga_test2/login/login.jsp" target="_parent" 
			        	>로그인</a></li>
					<li><a href="http://localhost:9000/gga_test2/join/join.jsp" target="_parent" 
						>회원가입</a></li>
					<li><a href="http://localhost:9000/gga_test2/mypage/mypage.jsp" target="_parent" 
						>마이페이지</a></li>
					<li><a href="#">고객센터</a></li>
		      	</ul>
		       </div>
		     </div>
			
			<div class="header_section2">
				<div class="header_menu2">
				<ul>
				      <li><a href="http://localhost:9000/gga_test2/movie/movie_menu.jsp" target="_parent">
				     	영화</a></li>
				      <li><a href="http://localhost:9000/gga_test2/order/order.jsp" target="_parent">
				      	예매</a></li>
			      	  <li class="dropdown">
			          <a class="dropdown-toggle-split" href="#" role="button" 
			         	 data-bs-toggle="dropdown" aria-expanded="false">
			         	 게시판</a>
				          <ul class="dropdown-menu">
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test2/notice/notice_list.jsp"
				            	target="_parent">공지사항</a></li>
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test2/board/board_list.jsp" 
				            	target="_parent">커뮤니티</a></li>
				            <li><a class="dropdown-item" href="http://localhost:9000/gga_test2/board/faq.jsp"
				            	target="_parent">FAQ</a></li>
				     </ul>
				     </li>
				      <li><a href="http://localhost:9000/gga_test2/coronation/coronation.jsp" target="_parent">
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
				          <input type="text" placeholder=" 영화 제목을 검색해 주세요." id="mtitle">
				          <button type="submit" id="btnSearch"><p>검색</p></button>
				     </div>
			</div>
		</div>
	</header>
	<!-- header -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>