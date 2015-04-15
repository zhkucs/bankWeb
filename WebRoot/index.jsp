<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <br>
   <table width="100%" cellspacing="0" cellpadding="4" border="0">

  <tbody><tr> 

    <td bgcolor="#000099"> 

      <table width="100%" cellspacing="0" cellpadding="4" border="0">

        <tbody><tr> 

          <td bgcolor="#ffffff">&nbsp;<b>*</b>&nbsp;</td>

          <td width="100%"><font color="#cccccc">&nbsp; <font color="#ffffff"><strong>XXX网上银行<br></strong></font></font></td>

        </tr>

      </tbody></table></td>

  </tr>
  <tr>
     <td width="100%" bgcolor="#eaeaea" colspan="2"> 
      <form action="post" name="Name"><p> 
          <a href="auth/showSave.jsp">存钱</a> 
          <a href="auth/showDeposit.jsp">取钱</a> 
          <a href="servlet/findHistory">显示清单</a> 
          <a href="servlet/logout">注销</a> 
         <label>当前用户:<%=request.getSession().getAttribute("userName") %></label> 
    </p></form>
  </td>

  </tr>

</tbody></table></body>
</html>
