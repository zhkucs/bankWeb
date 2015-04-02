<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page isELIgnored="false" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String home = basePath + "/index.jsp";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showHistory.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div align="center">
  <center>  我的操作历史</center>
    <table border='1' width="414" height="77">
	<tbody>	
	<tr><th align="center">操作类型</th><th>金额</th><th>操作时间</th></tr>
	<c:forEach items="${history}" var="h"> 
	<tr><td>${h.type}</td><td>${h.amount}</td><td>${h.operateAt}</td></tr>
	</c:forEach> 
</tbody>

</table>
  </div>
<p align="center"> 
          <a href="<%=home%>">返回</a>
        </p>
  </body>
</html>
