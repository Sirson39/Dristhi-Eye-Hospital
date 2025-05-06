<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Doctor Profile Settings – Dhrishti Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Doctorcss/ProfileSetting.css"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <h2>Dr. John Doe</h2>
    <a href="${pageContext.request.contextPath}/DoctorDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/AppointmentSchedule.jsp"><i class="fas fa-calendar-alt"></i> Schedule</a>
    <a href="${pageContext.request.contextPath}/PatientRecord.jsp"><i class="fas fa-notes-medical"></i> Patient Records</a>
    <a href="${pageContext.request.contextPath}/AddTreatment.jsp"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="${pageContext.request.contextPath}/VisionTests.jsp"><i class="fas fa-eye"></i> Vision Tests</a>
    <a href="${pageContext.request.contextPath}/DoctorProfileSettings.jsp" class="active"><i class="fas fa-user-cog"></i> Profile Settings</a>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="dashboard-header">Profile Settings</div>

    <!-- Personal Details -->
    <div class="card">
      <h3>Personal Details</h3>
      <form id="doctorPersonalForm">
        <div class="form-row">
          <div class="form-group">
            <label for="docName">Full Name</label>
            <input type="text" id="docName" value="Dr. John Doe" readonly/>
          </div>
          <div class="form-group">
            <label for="docEmail">Email Address</label>
            <input type="email" id="docEmail" value="johndoe@dhristi.com" readonly/>
          </div>
          <div class="form-group">
            <label for="docPhone">Phone Number</label>
            <input type="tel" id="docPhone" value="+977-9812345678" readonly/>
          </div>
          <div class="form-group">
            <label for="specialization">Specialization</label>
            <input type="text" id="specialization" value="Retina Specialist" readonly/>
          </div>
          <div class="form-group">
            <label for="qualification">Qualification</label>
            <input type="text" id="qualification" value="MD Ophthalmology" readonly/>
          </div>
          <div class="form-group">
            <label for="availableDays">Available Days</label>
            <input type="text" id="availableDays" value="Mon, Wed, Fri" readonly/>
          </div>
          <div class="form-group">
            <label for="availableTimes">Available Times</label>
            <input type="text" id="availableTimes" value="09:00 AM – 02:00 PM" readonly/>
          </div>
          <div class="form-group">
            <label for="profilePic">Profile Picture</label>
            <input type="file" id="profilePic" accept="image/*" disabled/>
            <img id="profilePicPreview" src="https://via.placeholder.com/100" alt="Doctor Photo"/>
          </div>
        </div>
        <div class="form-actions">
          <button type="button" class="btn btn-edit" id="editDocBtn">Edit Info</button>
          <button type="submit" class="btn btn-save" id="saveDocBtn" style="display:none;">Save Changes</button>
          <button type="button" class="btn btn-cancel" id="cancelDocBtn" style="display:none;">Cancel</button>
        </div>
      </form>
    </div>

    <!-- Contact Information -->
    <div class="card">
      <h3>Contact Information</h3>
      <div class="form-row">
        <div class="form-group">
          <label for="docAddress">Address</label>
          <textarea id="docAddress" rows="2" readonly>Kathmandu, Nepal</textarea>
        </div>
        <div class="form-group">
          <label for="docCity">City</label>
          <input type="text" id="docCity" value="Kathmandu" readonly/>
        </div>
        <div class="form-group">
          <label for="docProvince">Province</label>
          <select id="docProvince" disabled>
            <option>Bagmati</option>
            <option>Gandaki</option>
            <option>Koshi</option>
          </select>
        </div>
        <div class="form-group">
          <label for="docEmergency">Emergency Contact</label>
          <input type="tel" id="docEmergency" value="+977-9800000000" readonly/>
        </div>
      </div>
    </div>

    <!-- Change Password -->
    <div class="card">
      <h3>Change Password</h3>
      <div class="form-row">
        <div class="form-group">
          <label for="currentPwd">Current Password</label>
          <input type="password" id="currentPwd"/>
        </div>
        <div class="form-group">
          <label for="newPwd">New Password</label>
          <input type="password" id="newPwd"/>
          <div class="strength-bar"><div></div></div>
          <div class="strength-text" id="pwdStrength">Strength: N/A</div>
        </div>
        <div class="form-group">
          <label for="confirmPwd">Confirm New Password</label>
          <input type="password" id="confirmPwd"/>
        </div>
      </div>
      <div class="form-actions">
        <button class="btn btn-save">Update Password</button>
      </div>
    </div>

    <!-- Activity Log -->
    <div class="card">
      <h3>Activity Log</h3>
      <table class="activity-table">
        <thead>
          <tr><th>Activity</th><th>Date & Time</th></tr>
        </thead>
        <tbody>
          <tr><td>Added treatment record</td><td>18-Apr-2025, 11:45 AM</td></tr>
          <tr><td>Viewed patient report</td><td>18-Apr-2025, 10:30 AM</td></tr>
          <tr><td>Updated availability</td><td>17-Apr-2025, 04:15 PM</td></tr>
        </tbody>
      </table>
    </div>

    <!-- Logout -->
    <div class="card">
      <h3>Logout & Session Management</h3>
      <button class="btn btn-logout"><i class="fas fa-sign-out-alt"></i> Logout All Devices</button>
    </div>
  </div>

  <script>
    // Doctor profile pic preview
    document.getElementById('profilePic').onchange = e => {
      const [file] = e.target.files;
      if (file) document.getElementById('profilePicPreview').src = URL.createObjectURL(file);
    };

    // Toggle edit/save for doctor personal details
    const docForm = document.getElementById('doctorPersonalForm');
    const docFields = docForm.querySelectorAll('input, select, textarea');
    const editDocBtn = document.getElementById('editDocBtn');
    const saveDocBtn = document.getElementById('saveDocBtn');
    const cancelDocBtn = document.getElementById('cancelDocBtn');
    let docBackup = {};

    editDocBtn.onclick = () => {
      docFields.forEach(f => {
        docBackup[f.id] = f.value;
        f.readOnly = false; f.disabled = false;
      });
      editDocBtn.style.display = 'none';
      saveDocBtn.style.display = 'inline-block';
      cancelDocBtn.style.display = 'inline-block';
    };
    cancelDocBtn.onclick = () => {
      docFields.forEach(f => {
        f.value = docBackup[f.id];
        f.readOnly = true; f.disabled = true;
      });
      editDocBtn.style.display = 'inline-block';
      saveDocBtn.style.display = 'none';
      cancelDocBtn.style.display = 'none';
    };
    docForm.onsubmit = e => {
      e.preventDefault();
      docFields.forEach(f => { f.readOnly = true; f.disabled = true; });
      editDocBtn.style.display = 'inline-block';
      saveDocBtn.style.display = 'none';
      cancelDocBtn.style.display = 'none';
      alert('Profile updated!');
      // TODO: send to server
    };

    // Password strength indicator
    const pwdBar = document.querySelector('.strength-bar > div');
    const pwdTxt = document.getElementById('pwdStrength');
    document.getElementById('newPwd').oninput = e => {
      const v = e.target.value;
      let s = 0;
      if (v.length >= 8) s++;
      if (/[A-Z]/.test(v)) s++;
      if (/[0-9]/.test(v)) s++;
      if (/[^A-Za-z0-9]/.test(v)) s++;
      const pct = (s / 4) * 100;
      pwdBar.style.width = pct + '%';
      if (s <= 1) { pwdBar.style.background = '#e74c3c'; pwdTxt.textContent = 'Weak'; }
      else if (s === 2) { pwdBar.style.background = '#f1c40f'; pwdTxt.textContent = 'Fair'; }
      else if (s === 3) { pwdBar.style.background = '#2ea6db'; pwdTxt.textContent = 'Good'; }
      else { pwdBar.style.background = '#28a745'; pwdTxt.textContent = 'Strong'; }
    };
  </script>
</body>
</html>
