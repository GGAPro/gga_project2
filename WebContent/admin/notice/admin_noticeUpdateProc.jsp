<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "com.gga.dao.NoticeDao" %>
<%@ page import = "com.gga.vo.NoticeVo" %>

<jsp:useBean id="noticeVo" class="com.gga.vo.NoticeVo"/>
<jsp:setProperty property="*" name="noticeVo"/>

<%
	NoticeDao noticeDao = new NoticeDao();
	int result = noticeDao.update(noticeVo);
	if(result == 1){
		response.sendRedirect("admin_notice_list.jsp");
	}
%>