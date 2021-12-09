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
<jsp:useBean id="aDao" class="projectDB.addressDB" scope="application"></jsp:useBean>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	projectBean aDo = aDao.getAddressOne(num);
%>

<center>
<%@ include file="sessiontop.jsp" %>
<h2> 뮤지컬 DB 수정 </h2>
<hr>
<form action="addressModifyProc.jsp" method="post">
<table border="1">
	<tr height="60" align="center">
		<td width="100"> 구분 </td>
		<td width="200"> 
		 <input type="text" name="sort" value="<%= aDo.getSort()%>">
		</td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 이름 </td>
		<td width="200"> 
		<input type="text" name="name" value="<%= aDo.getName() %>">
		</td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 출연진 </td>
		<td width="200"> 
		<input type="text" name="actor" value="<%= aDo.getActor() %>">
		</td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 러닝타임 </td>
		<td width="200"> 
			<input type="text" name="time" value="<%= aDo.getTime() %>">
		</td>
	</tr>
		<tr height="60" align="center">
		<td width="100"> 공연시간 </td>
		<td width="200"> 
			<input type="text" name="rutime" value="<%= aDo.getRutime() %>">
		</td>
	</tr>
	<tr height="60" align="center">
		<td colspan="2">
			<input type="hidden" name="num" value="<%= aDo.getNum() %>">
			<input type="submit" value="수정하기">
			<input type="button" value="목록보기"
			onclick="location.href='addressList.jsp'">
		</td>
	</tr>
</table>
</form>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>

