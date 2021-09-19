<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Department</title>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">

</head>
<body class="center">
	<form method="POST"
		action='/employee-management/manage?action=save_dept' name="frmDept">
		<table style="width: 100%; margin-left: auto; margin-right: auto;">
			<tr>
				<td>Department Name</td>
				<td><input type="text" name="dept_name"
					value="<c:out value="${dept.deptName}" />" /> <input type="hidden"
					name="id" value="<c:out value="${dept.id}" />" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /> <input
					type="submit" value="Cancel" name="cancel" /></td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>