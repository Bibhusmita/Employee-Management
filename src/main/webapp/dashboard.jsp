<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Employee Management</title>
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/footer-basic-centered.css">
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #42e6f5;
}

li {
	float: left;
	border-right: 1px solid #73AD21;
}

li:last-child {
	border-right: none;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#111
;


}
.active {
	background-color: #2222FF;
}
</style>
</head>
<body>
	<h1 class="center">Employee Management Tool</h1>
	<ul>
		<li><a class="active">Welcome ${user.fname} ${user.lname} :
				${id}</a></li>
		<c:if test="${user.role == 'admin'}">
			<li><a href="/employee-management/manage?action=add">Add
					Employee</a></li>
			<li><a href="/employee-management/manage?action=add_dept">Add
					Department</a></li>
			<li><a href="/employee-management/manage?action=add_comp">Add
					Compliance</a></li>
		</c:if>
		<li><a href="/employee-management/manage?action=add_comment">Add
				Comment</a></li>
		<li style="float: center"><a
			href="/employee-management/manage?action=logout">Log Out</a></li>
	</ul>


	<c:if test="${user.role == 'admin'}">
		<h3>Employees</h3>
		<table border="1" class="center">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Role</th>
				<th>User Id</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<%-- <td>${item.id}</td>--%>
					<td>${user.fname}</td>
					<td>${user.lname}</td>
					<td>${user.email}</td>
					<td>${user.phone}</td>
					<td>${user.role}</td>
					<td>${user.userid}</td>
					<td><a
						href="/employee-management/manage?action=edit&id=<c:out value='${user.id}' />">Edit</a></td>
					<td><a
						href="/employee-management/manage?action=delete&id=<c:out value='${user.id}' />">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		<h3>Departments</h3>
		<table border="1" class="center">
			<tr>
				<th>Department Id</th>
				<th>Department Name</th>
			</tr>
			<c:forEach items="${deptList}" var="dept">
				<tr>
					<td>${dept.id}</td>
					<td>${dept.deptName}</td>
					<td><a
						href="/employee-management/manage?action=edit_dept&id=<c:out value='${dept.id}' />">Edit</a></td>
					<td><a
						href="/employee-management/manage?action=delete_dept&id=<c:out value='${dept.id}' />">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
	<h3>Compliance</h3>
	<table border="1" class="center">
		<tr>
			<th>Compliance Id</th>
			<th>Regulation Type</th>
			<th>Details</th>
			<th>Date</th>
			<th>Department Id</th>
		</tr>
		<c:forEach items="${compList}" var="comp">
			<tr>
				<td>${comp.id}</td>
				<td>${comp.rltype}</td>
				<td>${comp.details}</td>
				<td><fmt:formatDate value="${comp.createDate}"
						pattern="yyyy-MM-dd" /></td>
				<td>${comp.departmentId}</td>
				<c:if test="${user.role == 'admin'}">
					<td><a
						href="/employee-management/manage?action=edit_comp&id=<c:out value='${comp.id}' />">Edit</a></td>
					<td><a
						href="/employee-management/manage?action=delete_comp&id=<c:out value='${comp.id}' />">Delete</a></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>

	<h3>Comments</h3>
	<table border="1" class="center">
		<tr>
			<th>Comment Id</th>
			<th>Comment</th>
			<th>Compliance Id</th>
			<th>Department Id</th>
			<th>Employee Id</th>
			<th>Date</th>
		</tr>
		<c:forEach items="${stsrptList}" var="stsrpt">
			<tr>
				<td>${stsrpt.id}</td>
				<td>${stsrpt.comments}</td>
				<td>${stsrpt.compId}</td>
				<td>${stsrpt.deptId}</td>
				<td>${stsrpt.empId}</td>
				<td><fmt:formatDate value="${stsrpt.createDate}"
						pattern="yyyy-MM-dd" /></td>
				<c:if test="${id == stsrpt.empId}">
					<td><a
						href="/employee-management/manage?action=edit_comment&id=<c:out value='${stsrpt.id}' />">Edit</a></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>


	<%@ include file="footer.jsp"%>
</body>
</html>