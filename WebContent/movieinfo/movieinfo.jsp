<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gga.dao.MovieDao" %>
<%@ page import="com.gga.vo.MovieVo" %>

<%
	String movieid = request.getParameter("movieid");
	MovieDao movieDao = new MovieDao();
	MovieVo movieVo = movieDao.mselect(movieid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<script src ="http://localhost:9000/gga_test2/js/jquery-3.6.4.min.js"></script>
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
.john {
	width:450px;
	height:700px;
}
table img{
	height:50px;
	width:117px;
	margin:0 50px 50px 0;
}
.orderbtn{
	width:200px;
	heigth:110px;
	margin:50px 125px;	
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
		<div class="content">
			<!-- <section class="movie_info1"> -->
				<div class="row">
					<div class="col">
						<img class="john" src="http://localhost:9000/gga_test2/images/<%= movieVo.getMainposter() %>">
					</div>
					<div class="col">
						<table>
							<tr>
								<th><img src="../images/desctitle.png"></th>
								<td><%= movieVo.getMtitle() %></td>
							</tr>
							<tr>
								<th><img src="../images/descdate.png"></th>
								<td><%= movieVo.getMoviedday() %></td>
							</tr>
							<tr>
								<th><img src="../images/descdirector.png"></th>
								<td><%= movieVo.getDirector() %></td>
							</tr>
							<tr>
								<th><img src="../images/descactor.png"></th>
								<td><%= movieVo.getActor() %></td>
							</tr>
							<tr>
								<th><img src="../images/descgenre.png"></th>
								<td><%= movieVo.getGenre() %></td>
							</tr>
							<tr>
								<th><img src="../images/descrun.png"></th>
								<td><%= movieVo.getRuntime() %></td>
							</tr>
							<tr>
								<th><img src="../images/descgrade.png"></th>
								<td>94% 만족</td>
							</tr>
						</table>
					</div>
				</div>
			
			<div>
				<a href="http://localhost:9000/gga_test2/order/order.jsp">
					<img class="orderbtn" src="../images/orderbtn.png"></a>
			</div>
			<!-- </section> -->
			
			<section class="movie_info2">
			<div>
				<table border="1">
					<tr><%= movieVo.getMovieinfo() %>
					</tr>
				</table>
				<!-- <table border="1">
					<tr>
						<th>영화설명</th><td>영화설명</td>
					</tr>
				</table> -->
			</div>
			<div>
				<iframe width="1000" height="450" src="<%= movieVo.getYoutube() %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			</section>
			<div class="still_cut">
				<img src="http://localhost:9000/gga_test2/images/stillcut.jpg" >
			</div>
			<section class="movie_info3">
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut1.jpg">
					<img alt="cut1" src="http://localhost:9000/gga_test2/images/<%= movieVo.getStillcut1() %>" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut2.jpg">
					<img alt="cut2" src="http://localhost:9000/gga_test2/images/<%= movieVo.getStillcut2() %>" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut3.jpg">
					<img alt="cut3" src="http://localhost:9000/gga_test2/images/<%= movieVo.getStillcut3() %>" width="250" height="210">
				</a>
			</div>		
			<div>
				<a target="_blank" href="http://localhost:9000/gga_test2/images/johncut4.jpg">
					<img alt="cut4" src="http://localhost:9000/gga_test2/images/<%= movieVo.getStillcut4() %>" width="250" height="210">
				</a>
			</div>		
			
			</section>
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