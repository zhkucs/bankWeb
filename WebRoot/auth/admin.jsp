<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'admin.jsp' starting page</title>

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

			<tbody>
				<tr>

					<td bgcolor="#000099">

						<table width="100%" cellspacing="0" cellpadding="4" border="0">

							<tbody>
								<tr>

									<td bgcolor="#ffffff">
										&nbsp;
										<b>*</b>&nbsp;
									</td>

									<td width="100%">
										<font color="#cccccc">&nbsp; <font color="#ffffff"><strong>在线用户管理</strong>
										</font>
										</font>
									</td>

								</tr>

							</tbody>
						</table>
					</td>

				</tr>

				<tr>

					<td width="100%" bgcolor="#eaeaea" colspan="2">

						<div align="center">
							<table border='1' width="414" height="77">
								<tbody>
									<tr>
										<th>用户名</th>
										<th>登录时间</th>
										<th>操作</th>
									</tr>
									<c:forEach items="${logs}" var="h">
										<tr>
											<td>${h.userName}</td>
											<td>${h.happenAt}</td>
											<td>
												<a href="servlet/kick?userName=${h.userName}">剔除</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
					</td>
				</tr>

			</tbody>
		</table>
	</body>
</html>
