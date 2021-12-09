<%@page import="projectDB.projectBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<%@ include file="sessiontop.jsp" %>
<h2> 뮤지컬 DB 등록 정보 </h2>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="aDo" class="projectDB.projectBean">
	<jsp:setProperty name="aDo" property="*" />
</jsp:useBean>

<jsp:useBean id="aDao" class="projectDB.addressDB" scope="application" />
<%

	String[] rutime = request.getParameterValues("rutime");
	String rutimeText = "";
	for(int i =0; i < rutime.length;i++)
		rutimeText += rutime[i] + "   ";
	
	aDo.setRutime(rutimeText); 
	aDao.insertAddress(aDo);
%>
<table border="1">
	<tr height="60" align="center">
		<td width="100"> 구분 </td>
		<td width="300"> <%= aDo.getSort()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 이름 </td>
		<td width="300"> <%= aDo.getName()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 출연진 </td>
		<td width="300"> <%= aDo.getActor()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 러닝타임 </td>
		<td width="300"> <%= aDo.getTime()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 공연시간 </td>
		<td width="300"> <%= aDo.getRutime()%></td>
	</tr>
</table>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>