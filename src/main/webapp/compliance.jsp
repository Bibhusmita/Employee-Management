<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Compliance</title>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">

</head>
<body class="center">
	<form method="POST"
		action='/employee-management/manage?action=save_comp' name="frmComp">
		<table style="width: 100%; margin-left: auto; margin-right: auto;">
			<tr>
				<td>Regulation Type</td>
				<td><input type="text" name="rltype"
					value="<c:out value="${comp.rltype}" />" /></td>
			</tr>
			<tr>
				<td>Details</td>
				<td><input type="text" name="details"
					value="<c:out value="${comp.details}" />" /></td>
			<tr>
				<td>Department Id</td>
				<td><input type="text" name="deptid"
					value="<c:out value="${comp.departmentId}" />" /> <input
					type="hidden" name="id" value="<c:out value="${comp.id}" />" /></td>
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