<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Employee</title>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">

</head>
<body class="center">
	<form method="POST" action='/employee-management/manage?action=save'
		name="frmEmp">
		<table style="width: 100%; margin-left: auto; margin-right: auto;">
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname"
					value="<c:out value="${user.fname}" />" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname"
					value="<c:out value="${user.lname}" />" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"
					value="<c:out value="${user.email}" />" /></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="phone"
					value="<c:out value="${user.phone}" />" /></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><input type="text" name="role"
					value="<c:out value="${user.role}" />" /></td>
			</tr>
			<tr>
				<td>User Id</td>
				<td><input type="text" name="userid"
					value="<c:out value="${user.userid}" />" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password"
					value="<c:out value="${user.password}" />" /> <input type="hidden"
					name="id" value="<c:out value="${user.id}" />" /></td>
			</tr>
			<tr></tr>
			<tr>
				<td><input type="submit" value="Submit" /> <input
					type="submit" value="Cancel" name="cancel" /></td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>