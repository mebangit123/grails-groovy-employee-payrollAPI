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
                <div class="emp-count">${employeeList.size()}</div>
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
                <g:each in="${employeeList}" var="employee">
                    <tr>
                        <td>Profile</td>
                        <td>${employee.name}</td>
                        <td>${employee.gender}</td>
                        <td>
                            <g:each in="${employee.department}" var="dept">
                                <div class="dept-label">
                                    ${dept}
                                </div>
                            </g:each>
                        </td>
                        <td>${employee.salary}</td>
                        <td>${employee.startDate}</td>
                        <td>
                            <g:link controller="employee" action="delete" id="${employee.id}">
                                <g:img dir="../assets/icons/" file="delete-black-18dp.svg" alt="delete"/>
                            </g:link>
                            <g:link controller="employee" action="edit" id="${employee.id}"><g:img (click)="update(employee)" dir="../assets/icons/" file="create-black-18dp.svg" alt="edit" />
                            </g:link>
                        </td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
</body>
</html>