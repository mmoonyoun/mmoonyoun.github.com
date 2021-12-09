<%@page import="projectDB.projectBean"%>
<%@page import="projectDB.addressDB"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
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
<h2>검색 결과</h2>
<table border="1">
	<tr height="60" align="center">
		<td width="150"> 구분 </td>
		<td width="150"> 이름 </td>
		<td width="150"> 출연진 </td>
		<td width="150"> 러닝타임 </td>
		<td width="200"> 공연시간 </td>
	</tr>
<jsp:useBean id="aDao" class="projectDB.addressDB" scope="application" />
<%
request.setCharacterEncoding("utf-8");
String sk = request.getParameter("sk");
String sv = request.getParameter("sv");
 
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
 
Class.forName("com.mysql.jdbc.Driver");
 
String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=utf-8";
String dbUser = "root";
String dbPass = "111111";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
 
if(sk == null & sv == null) {
    pstmt = conn.prepareStatement("select * from project");
    out.println(pstmt + "<- pstmt");
    } else if(sk !=null & sv.equals("")) {
        pstmt = conn.prepareStatement("select * from project");
    } else if(sk != null & sv != null) {
        if(sk.equals("ssort")){
            pstmt = conn.prepareStatement("select * from project where sort=?");
            pstmt.setString(1, sv);
            out.println(sv + " 검색결과");
        } else if(sk.equals("sname")){
            pstmt = conn.prepareStatement("select * from project where name=?");
            pstmt.setString(1, sv);
            out.println(sv + " 검색결과");
        } else if(sk.equals("sactor")){
            pstmt = conn.prepareStatement("select * from project where actor=?");
            pstmt.setString(1, sv);
            out.println(sv + " 검색결과");
        } else if(sk.equals("srutime")){
            pstmt = conn.prepareStatement("select * from project where rutime=?");
            pstmt.setString(1, sv);
            out.println(sv + " 검색결과");
        }
    }        
        
    rs = pstmt.executeQuery();
    
    while(rs.next()){
%>
<tr>
      <td><%= rs.getString("sort")%></td>
      <td><%= rs.getString("name")%></td>
      <td><%= rs.getString("actor")%></td>
      <td><%= rs.getString("time")%></td>
      <td><%= rs.getString("rutime")%></td>
 </tr>
 
<%        
}
rs.close();
pstmt.close();
conn.close();
 
%>
</table>

<%@ include file="sessionbottom.jsp" %>
</center>
</body>
</html>