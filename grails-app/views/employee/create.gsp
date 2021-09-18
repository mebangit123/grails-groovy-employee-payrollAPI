<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Add user Form</title>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="addForm.css"/>
</head>

<body>
    <div class="form-content">
        <g:form class="form" action="save">
            <div class="form-head">
                Employee Payroll Form
            </div>
            <g:render template="form"/>
            <div class="buttonParent">
                <a href="${createLink(controller: 'employee', action: 'index')}" class="resetButton button cancelButton">Cancel</a>
                <div class="submit-reset">
                    <button type="submit" onclick="" class="submitButton button">Submit</button>
%{--                    <g:actionSubmit class="button submitButton" value="Submit" />--}%
                    <button type="reset" onclick="" class="resetButton button">Reset</button>
                </div>
            </div>
        </g:form>
    </div>
</body>
</html>