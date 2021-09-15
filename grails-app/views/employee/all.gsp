<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Employee List</title>
</head>
<asset:stylesheet src="all.css"/>
<g:link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;600&display=swap" rel="stylesheet" />

<body>
    <div class="card-body">
        <div class="detail">
            <div class="company-detail">
                Employee Details
                <div class="emp-count">10</div>
            </div>
            <div class="button-text">
                <a class="add-button" href="${createLink(controller: 'employee', action: 'create')}"><asset:image src="add-24px.svg" alt="Plus Icon"/> Add User</a>
            </div>
        </div>
        <div class="table-main">
            <table class="table">
                <tr>
                    <th></th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>StartDate</th>
                    <th class="action-row">Actions</th>
                </tr>
                <g:each in="${employees}" var="employee">
                    <tr>
                        <td>Profile</td>
                        <td>${employee.name}</td>
                        <td>${employee.gender}</td>
                        <td>${employee.department}</td>
                        <td>${employee.salary}</td>
                        <td>${employee.startDate}</td>
                        <td>
                            <asset:image src="delete-black-18dp.svg" />
                            <asset:image src="create-black-18dp.svg" />
                        </td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
</body>
</html>