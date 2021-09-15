<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 13-Sep-21
  Time: 7:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee List</title>
</head>
<asset:stylesheet src="all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;600&display=swap" rel="stylesheet">

<body>
    <header class="header-content header">
        <div class="logo-content">
            <img src="../assets/images/logo.png" alt="Logo">
            <div>
                <span class="emp-text">EMPLOYEE</span><br>
                <span class="emp-text emp-payroll">PAYROLL</span>
            </div>
        </div>
    </header>
    <div class="card-body">
        <div class="table-main">
            <div class="company-detail">
                Employee Details
            </div>
            <table class="table">
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>StartDate</th>
                    <th class="action-row">Actions</th>
                </tr>
                <g:each in="${employees}" var="employee">
                    <tr>
                        <td>${employee.name}</td>
                        <td>${employee.gender}</td>
                        <td>${employee.department}</td>
                        <td>${employee.salary}</td>
                        <td>${employee.startDate}</td>
                        <td>Edit|Delete</td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
</body>
</html>