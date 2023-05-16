$(document).ready(function(){
	
	/**********************************
	board write - 5월 12일 송지웅 이미지 버튼 클릭 이동 유효성 체크(로그인 여부)
	 **********************************/
//업데이트
		$("#btnBoardUpdate").click(function(){
		if($("#btitle").val() == "") {
			alert("제목을 입력하세요.");
			$("#btitle").focus();
			return false;
		}else if ($("#bmovie").val() == "default"){
			alert("영화를 선택하세요.");
			$("#bmovie").focus();
			return false;
		}else if ($("#bscore").val() == "default"){
			alert("평점을 선택하세요.");
			$("#bscore").focus();
			return false;
		}else if ($("#btextarea").val() == ""){
			alert("내용을 입력하세요.");
			$("#btextarea").focus();
			return false;
		}else {
			updateForm.submit();
		}
	});

	//리셋 버튼
	
	$("#btnBoardReset").click(function(){
		$("#btitle").val("");
		$("#bmovie").val("default");
		$("#bscore").val("default");
		$("#btextarea").val("");
	});
	
	/***
	 * 게시판 콘텐츠  
	 */
	//삭제 버튼
	
	$("#boardDelete").click(function(){
		var delConfirm = confirm("정말로 삭제 하시겠습니까 ?");
		if(delConfirm) {
			contentForm.submit();
			alert("삭제 되었습니다.");
		}else {
			alert("취소 되었습니다.")
		}
	});
	// -- 송지웅 5-16

}); //ready
