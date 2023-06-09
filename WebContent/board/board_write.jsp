<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String sid = (String)session.getAttribute("sid");
	if(sid == null) {
		out.write("<script>");
		out.write("alert('로그인 후 이용이 가능합니다. 기능점검완료 (주석처리) ');");
		/* out.write("location.href=('http://localhost:9000/gga_test1/login/login.jsp');"); */
		out.write("</script>");
	/* }else { */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test2/js/gga_javascript.js"></script> <!-- gga_javascript.js -->
<script src="http://localhost:9000/gga_test2/js/gga_jquery.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
section.board table {
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
</style>
<script>
function writeCheck(){
	let btitle = document.getElementById("btitle");
	let bmovie = document.getElementById("bmovie");
	let bscore = document.getElementById("bscore");
	let btextarea = document.getElementById("btextarea");
	if(btitle.value == ""){
		alert("제목를 작성해주세요");
		btitle.focus();
		return false;
	} else if(bmovie.value == 'default'){
		alert("영화 제목을 선택해주세요")
		return false;
	} else if(bscore.value == 'default') {
		alert("영화 점수을 선택해주세요")
		return false;
	} else if(btextarea.value == 0) {
		alert("내용를 작성해주세요");
		btextarea.focus();
		return false;
	} else {
		writeForm.submit();
	}
}

function checkCount(tagName){
	const tagList = document.getElementsByName(tagName);
	let count = 0;
	for(element of tagList){
		if(element.checked) count++;
	}
	return count;
}

function writeReset(){
	document.getElementById("btitle").value = "";
	document.getElementById("bmovie").value = "default";
	document.getElementById("bscore").value = "default"; 
	document.getElementById("btextarea").value = "";
	document.getElementById("id").focus;
}
</script>
<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
		<section class="board">
			<h1>글쓰기</h1>
			<form name="writeForm" action="boardWriteProc.jsp"  method="post">
				<table class="table table-bordered" style="width: 90%;">
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" name="btitle" class="binput" id="btitle">
						</td>
					</tr>
					<tr>
						<th>영화 제목</th>
						<td>
							<select class="btn btn-outline-secondary" name="bmovie" id="bmovie">
								<option value="default">영화 제목</option>
								<option value="suzume">스즈메의 문단속</option>
								<option value="darkknight">다크나이트</option>
								<option value="dune">듄</option>
								<option value="slamdunk">슬램덩크</option>
								<option value="inception">인셉션</option>
								<option value="rings">반지의 제왕</option>
							</select>
						</td>
						<th>평점</th>
						<td>
							<select class="btn btn-outline-secondary"name="bscore" id="bscore">
								<option value="default">평점</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="20" cols="80%" name="bcontent" class="btextarea" id="btextarea"></textarea>
						</td>
					</tr>					
					<tr>
						<td colspan="4">
							<button class="btn btn-outline-secondary" type="button" onclick="writeCheck()">등록완료</button>
							<button class="btn btn-outline-secondary" type="button" onclick="writeReset()">다시쓰기</button>
							<a href="board_list.jsp">
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
		<iframe src="http://localhost:9000/gga_test2/footer.jsp"
			scrolling="no" width="100%" height="600px" frameborder=0></iframe>	
	</footer>
	<!-- footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>
<% } %>