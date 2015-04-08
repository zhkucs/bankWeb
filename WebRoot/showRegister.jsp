<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
    
   <table width="100%" cellspacing="0" cellpadding="4" border="0">

	<tbody><tr> 

		<td bgcolor="#000099"> 

			<table width="100%" cellspacing="0" cellpadding="4" border="0">

				<tbody><tr> 

					<td bgcolor="#ffffff">&nbsp;<b>*</b>&nbsp;</td>

						<td width="100%"><font color="#cccccc">&nbsp; <font color="#ffffff">注册账号</font></font></td>

				</tr>

			</tbody></table></td>

	</tr>

	<tr> 

		<td width="100%" bgcolor="#eaeaea" colspan="2"><div align="right">  
 
			</div><form action="servlet/register" name="Name" ><div align="right"> 
				</div><div align="center"><br></div><table width="328" border="0" height="169">
<tbody><tr>
<td align="right">&nbsp;<label for="textfield">&nbsp;&nbsp;用户名</label></td>
<td>&nbsp;<input type="text" id="textfield" name="userName"></td></tr>
<tr>
<td align="right">&nbsp;<label for="textfield2">密码</label></td>
<td>&nbsp;<input type="text" id="textfield2" name="password1"></td></tr>
<tr>
<td align="right">&nbsp;<label for="textfield2">重复密码</label></td>
<td>&nbsp;<input type="text" id="textfield2" name="password2"></td></tr>
<tr>
<td align="right">&nbsp;<label for="textfield2">&nbsp;&nbsp;身份证</label></td>
<td>&nbsp;<input type="text" id="textfield2" name="sid"></td></tr>
<tr>
<td align="right">&nbsp;<label for="textfield2">电子邮箱</label></td>
<td>&nbsp;<input type="text" id="textfield2" name="email"></td></tr>
<tr>
<td>&nbsp;</td>
<td><div align="center">  
 
				<input type="submit" value="注册" name="Submit"> 
 
				</div></p></td></tr>
</tbody></table>
				</form>

		</td>

  </tr>

</tbody></table>
<%
	String str = request.getParameter("message");
	String message = "";
	if(str != null){
		message=new String((str).getBytes("ISO-8859-1"),"GBK");
	} %>
<red><%=message %></red></body>
</html>
