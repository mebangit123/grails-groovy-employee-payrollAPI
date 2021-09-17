<div class="row-content">
    <label for="name" class="label text">Name</label>
    <g:textField class="input" name="name" value="" />
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
        <div>
            <g:radio name="gender" value="Male"/>
            <label for="gender">Male</label>
        </div>
        <div>
            <g:radio name="gender" value="Female" />
            <label for="gender">Female</label>
        </div>
    </div>
</div>
<div class="row-content">
    <label class=" label text">Department</label>
    <div>
        <g:checkBox name="hr" value="HR" checked="false" />
        <label class="text" for="hr">HR</label>
        <g:checkBox name="sales" value="Sales" checked="false" />
        <label class="text" for="sales">Sales</label>
        <g:checkBox name="finance" value="Finance" checked="false" />
        <label class="text" for="finance">Finance</label>
        <g:checkBox name="engineer" value="Engineer" checked="false" />
        <label class="text" for="engineer">Engineer</label>
        <g:checkBox name="others" value="Others" checked="false" />
        <label class="text" for="others">Others</label>
    </div>
</div>
<div class="row-content">
    <label for="salary" class="label text">Salary</label>
    <input type="range" class="input" name="salary" id="salary" min="300000" max="500000" step="100" value="">
    <output id="salary-output" class="salary-output text" for="salary">400000</output>
</div>
<div class="row-content">
    <label for="startDate" class="label text">Start Date</label>
    <g:datePicker name="startDate" value="${employee?.startDate}" precision="day" years="${2021..1960}"/>
</div>
<div class="row-content">
    <label for="note" class="label text">Note</label>
    <g:textArea class="input" name="note" value="" rows="3" cols="40"/>
</div>