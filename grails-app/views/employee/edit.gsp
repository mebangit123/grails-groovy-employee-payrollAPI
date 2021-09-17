<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Edit user Form</title>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="addForm.css"/>
</head>
<div class="form-content">
    <g:form class="form" controller="employee" action="update">
        <g:hiddenField name="id" value="${employee.id}"/>
        <g:render template="form" model="[edit:'yes']"/>
        <div class="buttonParent">
            <a href="${createLink(controller: 'employee', action: 'index')}" class="resetButton button cancelButton">Cancel</a>
            <div class="submit-reset">
                <g:actionSubmit class="button submitButton" value="Update" />
                <button type="reset" onclick="" class="resetButton button">Reset</button>
            </div>
        </div>
    </g:form>
</div>