<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<table width="800" >
	<tr height="100">
		<td align="center" colspan="2">
			<img src="img/logo.JPG" width="120" height="100">
		</td>
		<td colspan="4">
			<a href="sessionHome.jsp" style="color:black;text-decoration:none;">
			<font size="6">뮤지컬 온라인 중계</font> </a>
		</td>
	</tr>
	<tr height="50">
		<td width="160" align="center"> <a href="introduction.jsp" style="color:black;text-decoration:none;">소개</a></td>
		<td width="160" align="center"> <a href="addressForm.jsp" style="color:black;text-decoration:none;">공연 등록 </a></td>
		<td width="160" align="center"> <a href="addressList.jsp" style="color:black;text-decoration:none;">라인업</a></td>
		<td width="160" align="center"> <a href="addressBooklist.jsp" style="color:black;text-decoration:none;">예약 리스트 </a></td>
		<td width="160" align="center"> 
		<%
			String userid = (String) session.getAttribute("userid"); 
			if(session.getAttribute("userid")==null){
				out.println("<a href='sessionLoginForm.jsp' style='color:black;text-decoration:none;'>로그인</a>");
			}else{
				out.println(userid+"님 ");
				out.println("<a href='sessionLogoutProc.jsp'><input type='button' value='로그아웃'/></a>");
			}
		%>
		</td>
	</tr>
	</table>
</body>
</html>