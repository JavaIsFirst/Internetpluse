<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<%@page import="view.userServletList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">	
<title>Insert title here</title>
</head>
<body>
<% response.sendRedirect("userServletList"); %>
<!-- 本处使用重定向和请求转发都是可以的，path代表Servlet的地址 -->

</body>
</html>