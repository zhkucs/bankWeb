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
										<font color="#cccccc">&nbsp; <font color="#ffffff">登录XX网上银行</font>
										</font>
									</td>

								</tr>

							</tbody>
						</table>
					</td>

				</tr>

				<tr>

					<td width="100%" bgcolor="#eaeaea" colspan="2">

						<form action="servlet/login" name="Name">
							<p>

								<label for="textfield">
									用户名
								</label>


								<input type="text" id="textfield" name="userName">

							</p>

							<p>

								<label for="textfield2">
									密码
								</label>


								<input type="password" id="textfield2" name="password">

							</p>

							<p>

								<input type="submit" value="GO" name="Submit">

							</p>

						</form>

					</td>

				</tr>

			</tbody>
		</table>
	</body>
</html>