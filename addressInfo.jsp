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
<jsp:useBean id="aDao" class="projectDB.addressDB" scope="application" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	projectBean aDo = aDao.getAddressOne(num);
%>
<center>
<%@ include file="sessiontop.jsp" %>
<h2> 선택한 주소록 보기 </h2>
<hr>
<table border="1">
	<tr height="60" align="center">
		<td width="100"> 구분 </td>
		<td width="200"> <%= aDo.getSort()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 이름 </td>
		<td width="200"> <%= aDo.getName()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 출연진 </td>
		<td width="200"> <%= aDo.getActor()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 러닝타임 </td>
		<td width="200"> <%= aDo.getTime()%></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 공연시간 </td>
		<td width="200"> <%= aDo.getRutime()%></td>
	</tr>
	<tr height="60" align="center">
		<td colspan="2">
			<input type="button" value="수정하기"
			onclick="location.href='addressModify.jsp?num=<%=aDo.getNum() %>'">
			<input type="button" value="삭제하기"
			onclick="location.href='addressDelete.jsp?num=<%=aDo.getNum() %>'">

			<input type="button" value="예약하기"
			onclick="location.href='addressbook.jsp?num=<%=aDo.getNum() %>'">
		</td>
	</tr>
</table>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>