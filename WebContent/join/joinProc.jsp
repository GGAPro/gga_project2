<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "com.gga.vo.MemberVo" %>
<%@ page import = "com.gga.dao.MemberDao" %>
<jsp:useBean id="memberVo" class="com.gga.vo.MemberVo"/>
<jsp:setProperty property="*" name="memberVo"/>

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.insert(memberVo);
	if(result == 1){
		out.write("<script>");
		out.write("alert('회원가입 완료');");
		out.write("localhost.href = 'http://localhost:9000/gga_test1/login/login.jsp'");
		out.write("</script>");
	}
%>