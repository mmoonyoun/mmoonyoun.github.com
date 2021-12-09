<%@page import="projectDB.projectBean"%>
<%@page import="projectDB.addressDB"%>
<%@page import="java.util.ArrayList"%>
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

	ArrayList<projectBean> v = aDao.getBookAddress(); 
%>
<center>
<%@ include file="sessiontop.jsp" %>
<br>
<h2> 예약 리스트 </h2>
<br>
<table border="1">
	<tr height="60" align="center">
		<td width="150"> 구분 </td>
		<td width="150"> 이름 </td>
		<td width="150"> 출연진 </td>
		<td width="150"> 러닝타임 </td>
		<td width="200"> 공연시간 </td>
	</tr>
	<%
		for(int i=0;i<v.size();i++)
		{
			projectBean aDo = v.get(i);
	%>
		<tr height="60" align="center">
			<td width="200"> <%= aDo.getSort() %></td>
			<td width="150"> <%= aDo.getName() %> </td>
			<td width="150"> <%= aDo.getActor() %> </td>
			<td width="300"> <%= aDo.getTime() %> </td>
			<td width="300"> <%= aDo.getRutime() %> </td>
		</tr>
	<%
		}
	%>
</table>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>