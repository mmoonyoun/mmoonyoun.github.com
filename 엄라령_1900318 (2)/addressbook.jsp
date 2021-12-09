<%@page import="projectDB.musreserveBean"%> 
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
<jsp:useBean id="aDo" class="projectDB.musreserveBean">
	<jsp:setProperty name="aDo" property="*" />
</jsp:useBean>

<jsp:useBean id="aDao" class="projectDB.addressDB" scope="application" />
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	projectBean aDoo = aDao.getAddressOne(num);
	aDao.booking(aDoo);
%>
<center>
<%@ include file="sessiontop.jsp" %>
<h2>예약이 완료되었습니다.</h2>
<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>

