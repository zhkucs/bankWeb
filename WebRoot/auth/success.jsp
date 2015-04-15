<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String home = basePath + "/index.jsp";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><br> <table width="535" cellspacing="0" cellpadding="4" border="0" height="159">

  <tbody><tr> 

    <td bgcolor="#000099"> 

      <table width="100%" cellspacing="0" cellpadding="4" border="0">

        <tbody><tr> 

          <td bgcolor="#ffffff">&nbsp;<b>*</b>&nbsp;</td>

          <td width="100%"><font color="#cccccc">&nbsp; <font color="#ffffff"><strong>提示</strong></font></font></td>

        </tr>

      </tbody></table></td>

  </tr>

  <tr> 

     <td width="100%" bgcolor="#eaeaea" colspan="2"><div align="center">  
 
      </div><form action="post" name="Name"><p align="center">
          <label for="textfield">
          <%=request.getAttribute("message") %>
          金额为： <%=request.getAttribute("amount") %>
          </label>      

        </p>
        <p align="center"> 
          <a href="<%=home%>">返回</a>
        </p>

    </form>

  </td>

  </tr>

</tbody></table></body>
</html>
