<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Profile Settings – Dhristi Eye Hospital</title>
  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Patientcss/myprofile.css" />
</head>
<body>
  <div class="sidebar">
    <h2>My Dashboard</h2>
    <a href="${pageContext.request.contextPath}/PatientDashboard.jsp"><i class="fas fa-chart-line"></i> My Dashboard</a>
    <a href="${pageContext.request.contextPath}/testreport.jsp"><i class="fas fa-notes-medical"></i> Test Reports</a>
    <a href="${pageContext.request.contextPath}/MyAppointments.jsp"><i class="fas fa-user-md"></i> My Appointments</a>
    <a href="${pageContext.request.contextPath}/BookAppointment.jsp"><i class="fas fa-calendar-check"></i> Book Appointments</a>
    <a href="${pageContext.request.contextPath}/Billing.jsp"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
    <a href="${pageContext.request.contextPath}/Feedback.jsp"><i class="fas fa-comment-dots"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/MyProfile.jsp" class="active"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <div class="main-content">
    <div class="dashboard-header"><i class="fas fa-user-cog"></i> Profile Settings</div>

    <!-- Personal Details -->
    <div class="card" id="personalCard">
      <h3>Personal Details</h3>
      <form id="personalForm">
        <div class="form-row">
          <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" placeholder="Enter your name" readonly />
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" placeholder="Enter your hospital email" readonly />
          </div>
          <div class="form-group">
            <label for="mobile">Mobile Number</label>
            <input type="tel" id="mobile" placeholder="Enter your phone number" readonly />
          </div>

          <div class="form-group">
            <label>Gender</label>
            <div>
              <label><input type="radio" name="gender" value="Male" disabled checked /> Male</label>
              <label><input type="radio" name="gender" value="Female" disabled /> Female</label>
              <label><input type="radio" name="gender" value="Other" disabled /> Other</label>
            </div>
          </div>

          <div class="form-group">
            <label for="profilePic">Profile Picture</label>
            <input type="file" id="profilePic" accept="image/*" disabled />
            <img id="profilePicPreview" src="https://via.placeholder.com/100" alt="Preview" />
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
          <input type="text" id="city" value="Kathmandu" />
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
          <input type="tel" id="emergencyContact" value="+977-9800000000" />
        </div>
      </div>
    </div>

    <!-- Login & Security -->
    <div class="card">
      <h3>Change Password</h3>
      <div class="form-row">
        <div class="form-group">
          <label for="currentPassword">Current Password</label>
          <input type="password" id="currentPassword" />
        </div>
        <div class="form-group">
          <label for="newPassword">New Password</label>
          <input type="password" id="newPassword" />
          <div class="strength-bar"><div></div></div>
          <div class="strength-text" id="strengthText">Strength: N/A</div>
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm New Password</label>
          <input type="password" id="confirmPassword" />
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
          <label><input type="checkbox" checked /> Appointment Alerts</label>
          <label><input type="checkbox" checked /> System Updates</label>
          <label><input type="checkbox" /> Feedback Notifications</label>
          <label><input type="checkbox" checked /> Billing & Payment Alerts</label>
          <label><input type="checkbox" /> Low Stock Alerts</label>
        </div>
      </div>
      <div class="form-row">
        <div class="form-group">
          <label><input type="checkbox" checked /> Email Notifications</label>
          <label><input type="checkbox" /> In-System Popups</label>
          <label><input type="checkbox" /> SMS Alerts</label>
        </div>
      </div>
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
      const [file] = e.target.files;
      if (file) {
        document.getElementById('profilePicPreview').src = URL.createObjectURL(file);
      }
    };

    // Toggle edit/save for personal details
    const pForm = document.getElementById('personalForm');
    const fields = pForm.querySelectorAll('input, select');
    const editBtn = document.getElementById('editPersonalBtn');
    const saveBtn = document.getElementById('savePersonalBtn');
    const cancelBtn = document.getElementById('cancelPersonalBtn');
    let backup = {};
    editBtn.onclick = () => {
      fields.forEach(f => backup[f.id] = f.value);
      fields.forEach(f => { f.readOnly = false; f.disabled = false; });
      editBtn.style.display = 'none'; saveBtn.style.display = 'inline-block'; cancelBtn.style.display = 'inline-block';
    };
    cancelBtn.onclick = () => {
      fields.forEach(f => { f.value = backup[f.id]; f.readOnly = true; f.disabled = true; });
      editBtn.style.display = 'inline-block'; saveBtn.style.display = 'none'; cancelBtn.style.display = 'none';
    };
    pForm.onsubmit = e => {
      e.preventDefault();
      fields.forEach(f => { f.readOnly = true; f.disabled = true; });
      editBtn.style.display = 'inline-block'; saveBtn.style.display = 'none'; cancelBtn.style.display = 'none';
      alert('Personal details saved!');
    };

    // Password strength indicator
    const strengthBar = document.querySelector('.strength-bar > div');
    const strengthText = document.getElementById('strengthText');
    document.getElementById('newPassword').oninput = e => {
      const val = e.target.value;
      let score = 0;
      if (val.length >= 8) score++;
      if (/[A-Z]/.test(val)) score++;
      if (/[0-9]/.test(val)) score++;
      if (/[^A-Za-z0-9]/.test(val)) score++;
      const pct = (score / 4) * 100;
      strengthBar.style.width = pct + '%';
      if (score <= 1) { strengthBar.style.background = '#e74c3c'; strengthText.textContent = 'Weak'; }
      else if (score === 2) { strengthBar.style.background = '#f1c40f'; strengthText.textContent = 'Fair'; }
      else if (score === 3) { strengthBar.style.background = '#2ea6db'; strengthText.textContent = 'Good'; }
      else { strengthBar.style.background = '#28a745'; strengthText.textContent = 'Strong'; }
    };
  </script>
</body>
</html>