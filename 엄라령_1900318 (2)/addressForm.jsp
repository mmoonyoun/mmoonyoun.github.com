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
<h2> 뮤지컬 DB 등록 </h2>
<form action="addressProc.jsp" method="post">
<table border="1">
	<tr height="60" align="center">
		<td width="100"> 구분 </td>
		<td width="300"> 
			<select name="sort">
				<option value="창작"> 창작 </option>
				<option value="라이센스"> 라이센스 </option>
				<option value="오리지널"> 오리지널 </option>
			</select> 
		</td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 이름 </td>
		<td width="300"> <input type="text" name="name"></td>
	</tr>
	<tr height="60" align="center">
		<td width="100"> 출연진 </td>
		<td width="300"> <input type="text" name="actor"></td>
	</tr>
		<tr height="60" align="center">
		<td width="100"> 러닝타임 </td>
		<td width="300"> <input type="text" name="time"></td>
	</tr>
		<tr height="60" align="center">
		<td width="100"> 공연시간 </td>
		<td width="300"> 
			<input type="checkbox" name="rutime" value="평일 8시"> 평일 8시<br>
			<input type="checkbox" name="rutime" value="토 3시,7시"> 토 3시,7시
			<input type="checkbox" name="rutime" value="일 2시,6시"> 일 2시,6시
		</td>
	</tr>
	<tr height="60" align="center"> 
		<td colspan="2">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</td>
	</tr>
</table></form>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>