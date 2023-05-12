<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gga_test2</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="http://localhost:9000/gga_test2/css/gga.css"> <!-- gga.css -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
		<div class="order_title">
		<img src="http://localhost:9000/gga_test2/images/ordertitle.png">
		</div>
		
		<div class="ticket_bac1">
	
		<select class="ticket_movie">
			<option value="default">영화를 선택해 주세요.</option>
			<option value="king">반지의 제왕</option>
			<option value="harry">해리포터</option>
			<option value="slamdunk">슬램덩크</option>
			<option value="seven">7번방의 선물</option>
		</select>
		<br>
		<input type="date" id="start" name="trip-start"
	       value="2023-04-26"
	       min="2023-04-01" max="2023-05-31">
	       
	    <select class="ticket_time">
			<option value="default">시간</option>
			<option value="10">10:00</option>
			<option value="12">12:00</option>
			<option value="14">14:00</option>
			<option value="1730">17:30</option>
		</select>
		<br>
		<p class="ticket_price">30,000원</p>
		</div>
		
		<div class="ticket_bac2">
		<ul>
		<li>
			<label><span class="material-symbols-outlined">person</span>  : </label>
			<input type="text" name="name" class="ticket_name" placeholder=" 이름">
		</li>
		<li>
			<label><span class="material-symbols-outlined">garage</span>  : </label>
			<input type="text" name="name" class="ticket_name" placeholder=" 차량번호">
		</li>
		<li>
			<label><span class="material-symbols-outlined">mail</span>  : </label>
			<input type="text" name="name" class="ticket_name" placeholder=" Email">
		</li>
		<li>
			<label><span class="material-symbols-outlined">call</span>  : </label>
			<input type="text" name="name" class="ticket_name" placeholder=" 전화번호">
		</li>
		
		
		</ul>
		</div>
		
		<div class="ticket_button" onclick="requestcardPay()">
		<a><img src="http://localhost:9000/gga_test2/images/neworderbtn.png"></a>
		</div>
		<div class="kakaopay_button" onclick="requestkakaoPay()">
		<a><img src="http://localhost:9000/gga_test2/images/kakaopay.png"></a>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK
	/7HAuoJl+0I4" crossorigin="anonymous"></script> <!-- 부트스트랩 -->
	<script>
        var IMP = window.IMP; 
        IMP.init("imp71285848"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        

        function requestkakaoPay() {
            IMP.request_pay({
                pg : 'kakaopay',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : 'GGA 영화 티켓',
                amount : 30000,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
	            /* m_redirect_url: "http://localhost:9000/gga_test2/order/ordercon.jsp"  */
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                   location.href="http://localhost:9000/gga_test2/order/ordercon.jsp";
                    
                } else {
                    console.log(rsp);
                    alert("결제를 실패했습니다. 잠시후 다시 시도해 주세요.");
                    
                }
            });
        }
        
        function requestcardPay() {
            IMP.request_pay({
                pg : 'kcp',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : 'GGA 영화 티켓',
                amount : 30000,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
	            /* m_redirect_url: "http://localhost:9000/gga_test2/order/ordercon.jsp"  */
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                   location.href="http://localhost:9000/gga_test2/order/ordercon.jsp";
                    
                } else {
                    console.log(rsp);
                    alert("결제를 실패했습니다. 잠시후 다시 시도해 주세요.");
                    
                }
            });
        }
    </script>
</body>
</html>