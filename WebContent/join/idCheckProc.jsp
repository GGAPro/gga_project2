<%@ page import = "com.gga.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	MemberDao memberDao = new MemberDao();
	int result = memberDao.idCheck(id);
	
	out.write(String.valueOf(result));
%>