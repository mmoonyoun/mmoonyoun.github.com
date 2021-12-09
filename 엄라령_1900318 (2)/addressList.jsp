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
	ArrayList<projectBean> v = aDao.getAllAddress(); //전체 주소록 데이터를 가져옴
%>
<center>
<%@ include file="sessiontop.jsp" %>
<br>
<h2> 라인업 </h2>
<form action="addresssearch.jsp" method="post">
<select name="sk">
	<option value="ssort">구분</option>
	<option value="sname">이름</option>
	<option value="sactor">출연진</option>
	<option value="srutime">공연시간</option>
</select>

<input type="text" name="sv">
<input type="submit" value="검색">

</form>
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
			<td width="150"> 
			<a href="addressInfo.jsp?num=<%=aDo.getNum()%>">
			<%= aDo.getName() %> </a> </td>
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


