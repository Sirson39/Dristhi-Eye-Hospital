<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Profile Settings – Dhristi Eye Hospital</title>
  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Admincss/Profile.css"/>
</head>
<body>
  <div class="sidebar">
    <h2>Dhristi Admin</h2>
    <a href="${pageContext.request.contextPath}/AdminDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/ManageDoctors.jsp"><i class="fas fa-user-md"></i> Manage Doctors</a>
    <a href="${pageContext.request.contextPath}/ManagePatients.jsp"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/ManageAppointments.jsp"><i class="fas fa-calendar-check"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/ManageBilling.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/ManageFeedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/Report.jsp"><i class="fas fa-chart-pie"></i> Reports</a>
    <a href="${pageContext.request.contextPath}/ProfileSettings.jsp" class="active"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">
    <div class="dashboard-header">Profile Settings</div>

    <!-- Personal Details -->
    <div class="card" id="personalCard">
      <h3>Personal Details</h3>
      <form id="personalForm">
        <div class="form-row">
          <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" value="Admin User" readonly/>
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" value="admin@dhristi.com" readonly/>
          </div>
          <div class="form-group">
            <label for="mobile">Mobile Number</label>
            <input type="tel" id="mobile" value="+977-9812345678" readonly/>
          </div>
          <div class="form-group">
            <label for="role">Designation / Role</label>
            <select id="role" disabled>
              <option>Super Admin</option>
              <option>Inventory Manager</option>
            </select>
          </div>
          <div class="form-group">
            <label>Gender</label>
            <div>
              <label><input type="radio" name="gender" value="Male" disabled checked/> Male</label>
              <label><input type="radio" name="gender" value="Female" disabled/> Female</label>
              <label><input type="radio" name="gender" value="Other" disabled/> Other</label>
            </div>
          </div>
          <div class="form-group">
            <label for="profilePic">Profile Picture</label>
            <input type="file" id="profilePic" accept="image/*" disabled/>
            <img id="profilePicPreview" src="https://via.placeholder.com/100" alt="Preview"/>
          </div>
        </div>
        <div class="form-actions">
          <button type="button" class="btn btn-edit" id="editPersonalBtn">Edit Info</button>
          <button type="submit" class="btn btn-save" id="savePersonalBtn" style="display:none;">Save Changes</button>
          <button type="button" class="btn btn-cancel" id="cancelPersonalBtn" style="display:none;">Cancel</button>
        </div>
      </form>
    </div>

    <!-- Contact Information -->
    <div class="card">
      <h3>Contact Information</h3>
      <div class="form-row">
        <div class="form-group">
          <label for="address">Address</label>
          <textarea id="address" rows="2">123 Main St</textarea>
        </div>
        <div class="form-group">
          <label for="city">City</label>
          <input type="text" id="city" value="Kathmandu"/>
        </div>
        <div class="form-group">
          <label for="province">Province</label>
          <select id="province">
            <option>Bagmati</option>
            <option>Gandaki</option>
            <option>Koshi</option>
          </select>
        </div>
        <div class="form-group">
          <label for="emergencyContact">Emergency Contact</label>
          <input type="tel" id="emergencyContact" value="+977-9800000000"/>
        </div>
      </div>
    </div>

    <!-- Login & Security -->
    <div class="card">
      <h3>Change Password</h3>
      <div class="form-row">
        <div class="form-group">
          <label for="currentPassword">Current Password</label>
          <input type="password" id="currentPassword"/>
        </div>
        <div class="form-group">
          <label for="newPassword">New Password</label>
          <input type="password" id="newPassword"/>
          <div class="strength-bar"><div></div></div>
          <div class="strength-text" id="strengthText">Strength: N/A</div>
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm New Password</label>
          <input type="password" id="confirmPassword"/>
        </div>
      </div>
      <div class="form-actions">
        <button class="btn btn-save">Update Password</button>
      </div>
    </div>

    <!-- Notification Preferences -->
    <div class="card">
      <h3>Notification Preferences</h3>
      <div class="form-row">
        <div class="form-group">
          <label><input type="checkbox" checked/> Appointment Alerts</label>
          <label><input type="checkbox" checked/> System Updates</label>
          <label><input type="checkbox"/> Feedback Notifications</label>
          <label><input type="checkbox" checked/> Billing & Payment Alerts</label>
          <label><input type="checkbox"/> Low Stock Alerts</label>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label><input type="checkbox" checked/> Email Notifications</label>
          <label><input type="checkbox"/> In-System Popups</label>
          <label><input type="checkbox"/> SMS Alerts</label>
        </div>
      </div>
    </div>

    <!-- Admin Activity Log -->
    <div class="card">
      <h3>Admin Activity Log</h3>
      <table class="activity-table">
        <thead>
          <tr><th>Activity</th><th>Date & Time</th></tr>
        </thead>
        <tbody>
          <tr><td>Edited patient profile</td><td>17-Apr-2025, 09:23 AM</td></tr>
          <tr><td>Added optical stock</td><td>17-Apr-2025, 10:00 AM</td></tr>
          <tr><td>Exported billing rpt</td><td>16-Apr-2025, 05:40 PM</td></tr>
        </tbody>
      </table>
    </div>

    <!-- Logout & Session Management -->
    <div class="card">
      <h3>Logout & Session Management</h3>
      <button class="btn btn-logout"><i class="fas fa-sign-out-alt"></i> Logout All Devices</button>
    </div>
  </div>

  <script>
    // Profile pic preview
    document.getElementById('profilePic').onchange = e => {
      const [file] = e.target.files; if (file) {
        document.getElementById('profilePicPreview').src = URL.createObjectURL(file);
      }
    };
    // Personal details edit/save toggle
    const pForm = document.getElementById('personalForm');
    const fields = pForm.querySelectorAll('input, select');
    const editBtn = document.getElementById('editPersonalBtn');
    const saveBtn = document.getElementById('savePersonalBtn');
    const cancelBtn = document.getElementById('cancelPersonalBtn');
    let backup = {};
    editBtn.onclick = () => {
      fields.forEach(f => backup[f.id] = f.value);
      fields.forEach(f => { f.readOnly=false; f.disabled=false; });
      editBtn.style.display='none'; saveBtn.style.display='inline-block'; cancelBtn.style.display='inline-block';
    };
    cancelBtn.onclick = () => {
      fields.forEach(f => { f.value=backup[f.id]; f.readOnly=true; f.disabled=true; });
      editBtn.style.display='inline-block'; saveBtn.style.display='none'; cancelBtn.style.display='none';
    };
    pForm.onsubmit = e => { e.preventDefault(); fields.forEach(f => { f.readOnly=true; f.disabled=true; }); editBtn.style.display='inline-block'; saveBtn.style.display='none'; cancelBtn.style.display='none'; alert('Saved!'); };
    // Password strength indicator
    const strengthBar=document.querySelector('.strength-bar>div');
    const strengthText=document.getElementById('strengthText');
    document.getElementById('newPassword').oninput=e=>{
      const val=e.target.value; let score=0;
      if(val.length>=8)score++; if(/[A-Z]/.test(val))score++;
      if(/[0-9]/.test(val))score++; if(/[^A-Za-z0-9]/.test(val))score++;
      const pct=(score/4)*100; strengthBar.style.width=pct+'%';
      if(score<=1){strengthBar.style.background='#e74c3c';strengthText.textContent='Weak';}
      else if(score===2){strengthBar.style.background='#f1c40f';strengthText.textContent='Fair';}
      else if(score===3){strengthBar.style.background='#2ea6db';strengthText.textContent='Good';}
      else {strengthBar.style.background='#28a745';strengthText.textContent='Strong';}
    };
  </script>
</body>
</html>
