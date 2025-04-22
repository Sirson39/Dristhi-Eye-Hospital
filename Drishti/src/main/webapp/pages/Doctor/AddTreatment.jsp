<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add Treatment – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/Doctorcss/AddTreatment.css" rel="stylesheet"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
    <nav>
      <a href="${pageContext.request.contextPath}/DoctorDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
      <a href="${pageContext.request.contextPath}/AppointmentSchedule.jsp"><i class="fas fa-calendar-alt"></i> Appointment Schedule</a>
      <a href="${pageContext.request.contextPath}/PatientRecords.jsp"><i class="fas fa-id-card"></i> Patient Records</a>
      <a href="${pageContext.request.contextPath}/AddTreatment.jsp" class="active"><i class="fas fa-procedures"></i> Add Treatment</a>
      <a href="${pageContext.request.contextPath}/VisionTests.jsp"><i class="fas fa-eye"></i> Vision Tests</a>
      <a href="${pageContext.request.contextPath}/ProfileSettings.jsp"><i class="fas fa-user-cog"></i> Profile Settings</a>
    </nav>
  </div>

  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="page-header">Add Treatment</div>

    <div class="report-card">
      <form id="add-treatment-form">
        <!-- 1. Patient Identification -->
        <fieldset>
          <legend><i class="fas fa-user" style="color: #2ea6db;"></i> Patient Identification</legend>
          <div class="form-grid">
            <div>
              <label>Patient Name</label>
              <input type="text" value="Sita Lama" readonly/>
            </div>
            <div>
              <label>Patient ID</label>
              <input type="text" value="P‑1024" readonly/>
            </div>
            <div>
              <label>Age / Gender</label>
              <input type="text" value="29 / Female" readonly/>
            </div>
            <div>
              <label>Appointment ID</label>
              <input type="text" value="APT‑20250417‑02" readonly/>
            </div>
          </div>
        </fieldset>

        <!-- 2. Diagnosis / Condition Treated -->
        <fieldset>
          <legend><i class="fas fa-stethoscope" style="color: #08212b;"></i> Diagnosis / Condition Treated</legend>
          <textarea rows="3" placeholder="e.g., Acute Conjunctivitis, Myopia…"></textarea>
          <label style="margin-top:0.5rem;">Common Conditions:
            <select>
              <option>Acute Conjunctivitis</option>
              <option>Myopia</option>
              <option>Cataract (Right Eye)</option>
            </select>
          </label>
        </fieldset>

        <!-- 3. Prescribed Treatment Type -->
        <fieldset>
          <legend><i class="fas fa-prescription-bottle-alt" style="color: #23c6df;"></i> Prescribed Treatment Type</legend>
          <div class="checkbox-group">
            <label><input type="checkbox"/> Medication</label>
            <label><input type="checkbox"/> Diagnostic Tests</label>
            <label><input type="checkbox"/> Lifestyle Recommendations</label>
            <label><input type="checkbox"/> Surgery</label>
            <label><input type="checkbox"/> Follow-up Visit</label>
          </div>
        </fieldset>

        <!-- 4. Medication Section -->
        <fieldset>
          <legend><i class="fas fa-pills" style="color: #e74c3c;"></i> Medication</legend>
          <div id="medication-list">
            <div class="med-entry">
              <div><label>Medicine Name</label><input type="text" placeholder="Name or select…"/></div>
              <div><label>Dosage</label><input type="text" placeholder="1 drop twice a day"/></div>
              <div><label>Duration</label><input type="text" placeholder="e.g., 7 days"/></div>
              <div><label>Instructions</label><input type="text" placeholder="e.g., before meals"/></div>
              <button type="button" class="remove-med-btn">Remove</button>
            </div>
          </div>
          <button type="button" id="add-med-btn">Add More Medication</button>
        </fieldset>

        <!-- 5. Test Recommendations -->
        <fieldset>
          <legend><i class="fas fa-vials" style="color: #c4e80c;"></i> Test Recommendations</legend>
          <textarea rows="2" placeholder="e.g., perform OCT scan, measure IOP…"></textarea>
        </fieldset>

        <!-- 6. Surgery Details -->
        <fieldset>
          <legend><i class="fas fa-procedures"></i> Surgery Details (If applicable)</legend>
          <div class="form-grid">
            <div><label>Surgery Type</label><input type="text" placeholder="Cataract – Right Eye"/></div>
            <div><label>Scheduled Date</label><input type="date"/></div>
            <div><label>Surgeon</label><input type="text" value="Dr. Aayush Karki"/></div>
            <div><label>Operation Room</label><input type="text" placeholder="OR‑2"/></div>
            <div><label>Pre-op Advice</label><textarea rows="2" placeholder="e.g., No food after 10 PM"></textarea></div>
            <div><label>Post-op Notes</label><textarea rows="2" placeholder="e.g., Eye shield for 3 days"></textarea></div>
          </div>
        </fieldset>

        <!-- 7. Next Follow-up -->
        <fieldset>
          <legend><i class="fas fa-calendar-alt" style="color: #000;"></i> Next Follow-Up</legend>
          <div class="form-grid">
            <div><label>Follow-Up Date</label><input type="date"/></div>
            <div><label>Reason (optional)</label><input type="text" placeholder="Routine check…"/></div>
          </div>
        </fieldset>

        <!-- 8. Attachments -->
        <fieldset>
          <legend><i class="fas fa-paperclip"></i> Attachments</legend>
          <div class="form-grid">
            <div><label>Prescription Scan</label><input type="file"/></div>
            <div><label>Test Results URL</label><input type="url" placeholder="https://…"/></div>
            <div><label>Surgery Consent</label><input type="file"/></div>
          </div>
        </fieldset>

        <button type="submit" class="submit-btn">Save Treatment</button>
      </form>
    </div>
  </div>

  <script>
    // Add/remove medication entries
    const addBtn = document.getElementById('add-med-btn');
    const medList = document.getElementById('medication-list');
    addBtn.addEventListener('click', () => {
      const entry = medList.querySelector('.med-entry');
      const clone = entry.cloneNode(true);
      clone.querySelectorAll('input').forEach(i => i.value = '');
      medList.appendChild(clone);
    });
    medList.addEventListener('click', e => {
      if (e.target.matches('.remove-med-btn')) {
        const entries = medList.querySelectorAll('.med-entry');
        if (entries.length > 1) e.target.closest('.med-entry').remove();
      }
    });
  </script>
</body>
</html>
