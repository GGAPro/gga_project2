<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.gga.dao.NoticeDao" %>
<%@ page import = "com.gga.vo.NoticeVo" %>
<%@ page import = "java.util.ArrayList" %>

<%
	NoticeDao noticeDao = new NoticeDao();
	ArrayList<NoticeVo> list = noticeDao.select();
%>

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
	margin:auto;
} 

table tr:last-child {
	border:1px solid white;
}

table tr:last-child nav ul {
	margin-top:30px;
	justify-content:center;
}

table tr{
	text-align:center;
}

table td:nth-child(2){
	text-align:left;
}

table tr:first-child {
	border-top:1px solid white;
	border-right:1px solid white;
	border-left:1px solid white;
	text-align:right;
}
</style>

<body>
	<!-- header -->
	<header>
		<jsp:include page="../../header.jsp" />
	</header>
	<!-- header -->
	
	
	<!-- content -->
	<div class="container text-center">
	<div class="board_title">
		<img src="http://localhost:9000/gga_test1/images/noticetitle.png">
		</div>
		<section class="admin_notice">
			<table class="table table-bordered" style="width: 90%;">
				<tr>
					<td colspan="4">
						<a href="admin_notice_write.jsp">
							<button type="button" class="btn btn-outline-secondary">글쓰기</button>
						</a>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일자</th>
				</tr>
				<% for(NoticeVo noticeVo : list) { %>
				<tr>
					<td><%= noticeVo.getRno() %></td>
					<td><a href="admin_notice_content.jsp?nid=<%= noticeVo.getNid() %>"><%= noticeVo.getNtitle() %></a></td>
					<td><%= noticeVo.getNhits() %></td>
					<td><%= noticeVo.getNdate() %></td>
				</tr>
				<% } %>
				<tr>
					<td colspan="5">
					<nav aria-label="Page navigation example">
					  <ul class="pagination">
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span></a>
							</li>
							    <li class="page-item"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item">
							 <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
					</td>
				</tr>
			</table>
		</section>
	</div>
	<!-- content -->


	
	<!-- footer -->
	<footer>
		<jsp:include page="../../footer.jsp" />
	</footer>
	<!-- footer -->
	
	<!-- footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
</body>
</html>