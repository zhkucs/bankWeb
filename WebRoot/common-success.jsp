<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <table width="100%" cellspacing="0" cellpadding="4" border="0">

  <tbody><tr> 

    <td bgcolor="#000099"> 

      <table width="100%" cellspacing="0" cellpadding="4" border="0">

        <tbody><tr> 

          <td bgcolor="#ffffff">&nbsp;<b>*</b>&nbsp;</td>

          <td width="100%"><font color="#cccccc">&nbsp; <font color="#ffffff"><strong>操作成功</strong></font></font></td>

        </tr>

      </tbody></table></td>

  </tr>

  <tr> 

     <td width="100%" bgcolor="#eaeaea" colspan="2"><div align="center"> 

      </div><form action="post" name="Name"><p align="center">

          <label for="textfield">成功</label>

          

        </p>

        <p align="center"> 

          <a href="<%=request.getAttribute("path") %>></a>">返回</a>

        </p>

    </form>

  </td>

  </tr>

</tbody></table></body>
</html>