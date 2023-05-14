<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gga.dao.MovieDao" %>
<%@ page import="com.gga.vo.MovieVo" %>


<%
	String mtitle = request.getParameter("mtitle");
	MovieDao movieDao = new MovieDao();
	MovieVo movieVo = movieDao.seaselect(mtitle);
	out.write(movieVo.getMovieid());
%>