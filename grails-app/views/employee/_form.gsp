<div class="row-content">
    <label for="name" class="label text">Name</label>
    <g:textField class="input" name="name" value="${employee?.name}" />
</div>
<div class="row-content">
    <label for="profile" class="label text">Profile Image</label>
    <div class="profile-radio-content">
        <label>
            <g:radio name="profile" value="profile-images/Ellipse -10.png"/>
            <asset:image class="profile" src="profile-images/Ellipse -10.png" alt="profile" />
        </label>
        <label>
            <g:radio name="profile" value="profile-images/Ellipse -2.png" />
            <asset:image class="profile" src="profile-images/Ellipse -2.png" alt="profile" />
        </label>
        <label>
            <g:radio name="profile" value="profile-images/Ellipse -1.png"/>
            <asset:image class="profile" src="profile-images/Ellipse -1.png" alt="profile" />
        </label>
        <label>
            <g:radio name="profile" value="profile-images/Ellipse -3.png" />
            <asset:image class="profile" src="profile-images/Ellipse -3.png" alt="profile" />
        </label>
    </div>
</div>
<div class="row-content">
    <label for="gender" class="label text">Gender</label>
    <div class="profile-radio-content">
        <g:radioGroup name="gender"
                      values="['Male','Female']"
                      labels="['Male', 'Female']"
                      value="${employee?.gender}">
            <p>${it.radio}: ${it.label}</p>
        </g:radioGroup>
    </div>
</div>

<div class="row-content">
    <label for="department" class=" label text">Department</label>
    <div>
        <g:checkBox name="department" value="HR" checked="false" />
        <label class="text">HR</label>
        <g:checkBox name="department" value="Sales" checked="false" />
        <label class="text">Sales</label>
        <g:checkBox name="department" value="Finance" checked="false" />
        <label class="text">Finance</label>
        <g:checkBox name="department" value="Engineer" checked="false" />
        <label class="text">Engineer</label>
        <g:checkBox name="department" value="Others" checked="false" />
        <label class="text">Others</label>
    </div>
</div>
<div class="row-content">
    <label for="salary" class="label text">Salary</label>
    <input type="range" class="input" name="salary" id="salary" min="300000" max="500000" step="100" value="${employee?.salary}">
    <output id="salary-output" class="salary-output text" for="salary">400000</output>
</div>
<div class="row-content">
    <label for="startDate" class="label text">Start Date</label>
    <g:datePicker name="startDate" value="${employee?.startDate}" precision="day" years="${2021..1960}"/>
</div>
<div class="row-content">
    <label for="note" class="label text">Note</label>
    <g:textArea class="input" name="note" value="${employee?.note}" rows="3" cols="40"/>
</div>