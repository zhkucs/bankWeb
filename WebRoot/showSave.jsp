<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>

 <table width="584" cellspacing="0" cellpadding="4" border="0" height="147">

  <tbody><tr> 

    <td bgcolor="#000099"> 

      <table width="100%" cellspacing="0" cellpadding="4" border="0">

        <tbody><tr> 

          <td bgcolor="#ffffff">&nbsp;<b>*</b>&nbsp;</td>

          <td width="100%"><font color="#cccccc">&nbsp; <font color="#ffffff"><strong>存钱</strong></font></font></td>

        </tr>

      </tbody></table></td>

  </tr>

  <tr> 

     <td width="100%" bgcolor="#eaeaea" colspan="2"><div align="center">  
 
      </div>
      <form action="servlet/Save" name="Name"><p align="center">
          <label for="textfield">输入金额: </label>
          <input type="text" id="textfield" 
          name="amount">
          <input type="checkbox" name="checkbox1"> 定期     
          </p> <p align="center"> 
          <input type="submit" value="确定" name="Submit">
        </p>
    </form>

  </td>

  </tr>

</tbody></table></body>
</html>