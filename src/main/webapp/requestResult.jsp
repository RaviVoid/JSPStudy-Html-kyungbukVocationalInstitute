<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print(request.getContextPath()+"<span style='color:red'>request.getContextPath()</span><br>");
out.print(request.getLocalAddr()+"<br>");
out.print(request.getLocalName()+"<br>");
out.print(request.getLocalPort()+"<br>");
out.print(request.getLocale()+"<br>");
out.print(request.getMethod()+"<span style='color:red'>request.getMethod()</span><br>");
out.print(request.getQueryString()+"<span style='color:red'>request.getQueryString()</span><br>");
out.print(request.getParameter("name")+"<span style='color:red'>V</span><br>");
out.print(request.getRemoteAddr()+"<span style='color:red'>V</span><br>");
out.print(request.getRequestURI()+"<br>");
out.print(request.getRequestURL()+"<br>");
out.print("<span style='color:red'>"+request.getHeader("referer")+"</span><br>");
String referer = request.getHeader("referer");
%>
<span style='color:red'><%=referer %></span><br>

<% 
for(int i = 0; i < 10; i++){
	out.print(i+"<br>");
}
%>

<% 
for(int i = 0; i < 10; i++){
%>
<%=i %><br>
<%	
}
%>
</body>
</html>







