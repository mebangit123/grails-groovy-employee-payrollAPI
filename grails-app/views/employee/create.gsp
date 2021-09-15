<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Add user Form</title>
    <asset:stylesheet src="addForm.css"/>
</head>

<body>
    <div class="form-content">
        <g:form class="form" action="">
            <div class="form-head">
                Employee Payroll Form
            </div>
            <div class="row-content">
                <label for="name" class="label text">Name</label>
                <g:textField class="input" name="name" value="" />
            </div>
            <div class="row-content">
                <label for="profile" class="label text">Profile Image</label>
                <div class="profile-radio-content">
                    <label>
                        <g:radio name="profile" value="1"/>
                        <asset:image class="profile" src="profile-images/Ellipse -10.png" alt="profile" />
                    </label>
                    <label>
                        <g:radio name="profile" value="2" />
                        <asset:image class="profile" src="profile-images/Ellipse -2.png" alt="profile" />
                    </label>
                    <label>
                        <g:radio name="profile" value="3"/>
                        <asset:image class="profile" src="profile-images/Ellipse -1.png" alt="profile" />
                    </label>
                    <label>
                        <g:radio name="profile" value="4" />
                        <asset:image class="profile" src="profile-images/Ellipse -3.png" alt="profile" />
                    </label>
                </div>
            </div>
            <div class="row-content">
               <label for="gender" class="label text">Gender</label>
               <div class="profile-radio-content">
                   <div>
                       <g:radio name="gender" value="1"/>
                       <label for="gender">Male</label>
                   </div>
                   <div>
                        <g:radio name="gender" value="2" />
                       <label for="gender">Female</label>
                   </div>
                </div>
            </div>
            <div class="row-content">
                <label class=" label text">Department</label>
                <div>
                    <g:checkBox name="hr" value="" />
                    <label class="text" for="hr">HR</label>
                    <g:checkBox name="sales" value="" />
                    <label class="text" for="sales">Sales</label>
                    <g:checkBox name="finance" value="" />
                    <label class="text" for="finance">Finance</label>
                    <g:checkBox name="engineer" value="" />
                    <label class="text" for="engineer">Engineer</label>
                    <g:checkBox name="others" value="" />
                    <label class="text" for="others">Others</label>
                </div>
            </div>
            <div class="row-content">
                <label for="salary" class="label text">Salary</label>
                <input type="range" class="input" name="salary" id="salary" min="300000" max="500000" step="100" value="">
                <output id="sout" class="salary-output text" for="salary">400000</output>
            </div>
            <div class="row-content">
                <label for="date" class="label text">Start Date</label>
                    <g:datePicker name="date" value="" noSelection="['':'-Choose-']"/>
            </div>
            <div class="row-content">
                <label for="note" class="label text">Note</label>
                <g:textArea class="input" name="note" value="" rows="3" cols="40"/>
            </div>
            <div class="buttonParent">
                <a href="${createLink(controller: 'employee', action: 'all')}" class="resetButton button cancelButton">Cancel</a>
                <div class="submit-reset">
                    <button type="submit" class="button submitButton" id="submitButton">Submit</button>
                    <button type="reset" onclick="" class="resetButton button">Reset</button>
                </div>
            </div>
        </g:form>
    </div>
</body>
</html>