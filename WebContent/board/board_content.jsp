<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gga.dao.BoardDao"%>
<%@ page import="com.gga.vo.BoardVo"%>   

<%
	String bid = request.getParameter("bid");
	BoardDao boardDao = new BoardDao();
	BoardVo boardVo = boardDao.select(bid);
	String sid = (String)session.getAttribute("sid");
	if(sid == null){
		out.write("<script>");
		out.write("alert('로그인 후 이용 가능합니다.')");
		out.write("location.href=('http://localhost:9000/gga_test1/login/login.jsp');");
		out.write("</script>");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<script src="http://localhost:9000/gga_test2/jquery/jquery-3.6.4.min.js"></script>
<script src="http://localhost:9000/gga_test2/js/gga_jquery.js"></script>
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
.table td {
text-align:left;
}
.table tr:last-child td {
text-align:center;
}

img{
	height:50px;
	width:117px;
	cursor:pointer;
}
</style>
<!-- <script>
function cdelete(){
	if(window.confirm("정말로 삭제하시겠습니까?")){
		
	}
}

function cupdate(){
	if(window.confirm("정말로 수정하시겠습니까?")){
		window.location.href="board_update.jsp";
	}
}
</script> 필요없는 부분임 팀원들한테 컨펌 받고 삭제할 예정 --> 
<body>
	<!-- header -->
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
		<section class="board">
			<h1>게시판</h1>
			<form name="contentForm" action="boardDeleteProc.jsp"  method="post">
				<table class="table table-bordered" style="width: 90%;">
					<tr>
						<th>제목</th>
						<td><%=boardVo.getBtitle() %></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<%=boardVo.getBcontent() %><br>
						</td>
					</tr>
					<tr>
						<th>평점</th>
						<td><%=boardVo.getScore() %></td>
						
					</tr>
					<tr>
						<th>조회수</th>
						<td><%=boardVo.getViews() %></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><%=boardVo.getBid() %></td>
					</tr>
					<tr>
						<th>작성일자</th>
						<td><%=boardVo.getBdate() %></td>
					</tr>					
					<tr>
						<td colspan="4">
						<a href ="board_update.jsp?bid=<%= bid%>">
							<img id="boardUpdate" src="../images/editbtn.png"></a>
							<img id="boardDelete" src="../images/deletebtn.png">
							<a href="board_list.jsp">
								<img src="../images/listbtn.png"></a>

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
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>