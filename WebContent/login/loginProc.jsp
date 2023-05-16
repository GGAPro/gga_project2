<%@ page import = "com.gga.dao.MemberDao" %>
<%@ page import = "com.gga.vo.MemberVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="memberVo" class="com.gga.vo.MemberVo"/>
<jsp:setProperty property="*" name="memberVo"/>

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.loginCheck(memberVo);
	if(result == 1){
		// 세션객체에 ID를 저장 ==> sid(name) = test(value)
		session.setAttribute("sid", memberVo.getId());
		
		out.write("<script>");
		out.write("alert('로그인 되었습니다.');");
		out.write("location.href = 'http://localhost:9000/gga_test2/index.jsp';");
		out.write("</script>");
		// response.sendRedirect("http://localhost:9000/test_gga/index.jsp");
	} else{
		// 로그인 실패
		out.write("<script>");
		out.write("alert('아이디 또는 비밀번호가 일치하지 않습니다.');");
		out.write("location.href = 'http://localhost:9000/gga_test2/login/login.jsp';");
		out.write("</script>");
	}
%>