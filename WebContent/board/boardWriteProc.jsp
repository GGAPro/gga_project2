<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gga.dao.BoardDao"%>
<%@ page import="com.gga.vo.BoardVo"%>

<jsp:useBean id="boardVo" class="com.gga.vo.BoardVo"></jsp:useBean>
<jsp:setProperty property="*" name="boardVo"/>

<%
	BoardDao boardDao = new BoardDao();
	int result = boardDao.insert(boardVo);
	if(result == 1) {
		response.sendRedirect("http:localhost:9000/gga/board/board_list.jsp");
	}else {
		out.write("<script>alert('이 메세지 뜨면 된거임 SQL에 내용이 없어 result=0 인 결과물');</script>");
	}
%>