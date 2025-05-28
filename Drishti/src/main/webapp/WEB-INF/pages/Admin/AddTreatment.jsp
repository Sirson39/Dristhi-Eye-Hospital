<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Treatment – Dhristi Eye Hospital</title>

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/Admincss/AddTreatment.css" rel="stylesheet"/>
</head>

<body>
<!-- SIDEBAR -->
<div class="sidebar">
  <h2>Doctor Dashboard</h2>
  <nav>
    <a href="${pageContext.request.contextPath}/DoctorDashboard"><i class="fas fa-home"></i> Dashboard</a>
    <a href="${pageContext.request.contextPath}/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
    <a href="${pageContext.request.contextPath}/Admin/add-treatment" class="active"><i class="fas fa-procedures"></i> Add Treatment</a>
    <a href="${pageContext.request.contextPath}/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
    <a href="${pageContext.request.contextPath}/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
    <a href="${pageContext.request.contextPath}/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
  </nav>
</div>

<!-- MAIN CONTENT -->
<div class="main-content">
  <div class="page-header">Add Treatment</div>

  <div class="report-card">

    <!-- Error Messages -->
    <c:if test="${not empty error}">
      <div style="color:red;">${error}</div>
    </c:if>

    <!-- 1️⃣ Form to enter Patient ID -->
    <form method="get" action="${pageContext.request.contextPath}/Admin/add-treatment">
  <fieldset>
    <legend><i class="fas fa-user" style="color: #2ea6db;"></i> Enter Patient ID</legend>
    <div class="form-grid">
      <div>
        <label>Patient ID (User ID)</label>
        <input type="text" name="userId" value="${param.userId}" required>
      </div>
      <div>
        <button type="submit" class="submit-btn">Load Patient Details</button>
      </div>
    </div>
  </fieldset>
</form>

    <!-- Show patient details if loaded -->
<c:if test="${not empty patient}">
  <div class="patient-details">
    <h4>Patient Information:</h4>
    <p><strong>Name:</strong> ${patient.name}</p>
    <p><strong>Email:</strong> ${patient.email}</p>
    <p><strong>Phone:</strong> ${patient.phone}</p>
    <p><strong>Age:</strong> ${patient.age}</p>
    <p><strong>Gender:</strong> ${patient.gender}</p>
  </div>

      <!-- POST form to save treatment -->
  <form method="post" action="${pageContext.request.contextPath}/Admin/add-treatment">
    <input type="hidden" name="userId" value="${patient.userId}">
    <input type="hidden" name="appointmentId" value="${patient.appointmentId}">

        <!-- Diagnosis -->
        <fieldset>
          <legend><i class="fas fa-stethoscope" style="color: #08212b;"></i> Diagnosis / Condition Treated</legend>
          <textarea rows="3" name="diagnosis" placeholder="e.g., Acute Conjunctivitis, Myopia…" required></textarea>
          <label style="margin-top:0.5rem;">Common Conditions:
            <select name="commonCondition">
<<<<<<< HEAD
=======
=======
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add Treatment – Dhristi Eye Hospital</title>

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet"/>
  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/css/Admincss/AddTreatment.css" rel="stylesheet"/>
</head>
<body>
  <!-- SIDEBAR -->
  <div class="sidebar">
        <h2>Doctor dashboard</h2>
    <nav>
		 <a href="${pageContext.request.contextPath}/DoctorDashboard" ><i class="fas fa-home"></i> Dashboard</a>
		<a href="${pageContext.request.contextPath}/Admin/appointments"><i class="fas fa-calendar-alt"></i> Appointments</a>
		<a href="${pageContext.request.contextPath}/Admin/add-treatment"class="active"><i class="fas fa-procedures"></i> Add Treatment</a>
		<a href="${pageContext.request.contextPath}/manage-patients"><i class="fas fa-users"></i> Manage Patients</a>
		<a href="${pageContext.request.contextPath}/Admin/feedbacks"><i class="fas fa-comments"></i> Feedback</a>
		<a href="${pageContext.request.contextPath}/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
              <option>Acute Conjunctivitis</option>
              <option>Myopia</option>
              <option>Cataract (Right Eye)</option>
            </select>
          </label>
        </fieldset>

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <!-- Prescribed Treatment Type -->
        <fieldset>
          <legend><i class="fas fa-prescription-bottle-alt" style="color: #23c6df;"></i> Prescribed Treatment Type</legend>
          <div class="checkbox-group">
            <label><input type="checkbox" name="prescribedTreatmentType" value="Medication"/> Medication</label>
            <label><input type="checkbox" name="prescribedTreatmentType" value="Diagnostic Tests"/> Diagnostic Tests</label>
            <label><input type="checkbox" name="prescribedTreatmentType" value="Lifestyle Recommendations"/> Lifestyle Recommendations</label>
            <label><input type="checkbox" name="prescribedTreatmentType" value="Surgery"/> Surgery</label>
            <label><input type="checkbox" name="prescribedTreatmentType" value="Follow-up Visit"/> Follow-up Visit</label>
          </div>
        </fieldset>

        <!-- Medication Section -->
<<<<<<< HEAD
=======
=======
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <fieldset>
          <legend><i class="fas fa-pills" style="color: #e74c3c;"></i> Medication</legend>
          <div id="medication-list">
            <div class="med-entry">
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
              <div><label>Medicine Name</label><input type="text" name="medicineName" placeholder="Name or select…"></div>
              <div><label>Dosage</label><input type="text" name="medicineDosage" placeholder="1 drop twice a day"></div>
              <div><label>Duration</label><input type="text" name="mediDuration" placeholder="e.g., 7 days"></div>
              <div><label>Instructions</label><input type="text" name="medInstruction" placeholder="e.g., before meals"></div>
<<<<<<< HEAD
=======
=======
              <div><label>Medicine Name</label><input type="text" placeholder="Name or select…"/></div>
              <div><label>Dosage</label><input type="text" placeholder="1 drop twice a day"/></div>
              <div><label>Duration</label><input type="text" placeholder="e.g., 7 days"/></div>
              <div><label>Instructions</label><input type="text" placeholder="e.g., before meals"/></div>
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
              <button type="button" class="remove-med-btn">Remove</button>
            </div>
          </div>
          <button type="button" id="add-med-btn">Add More Medication</button>
        </fieldset>

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        <!-- Test Recommendations -->
        <fieldset>
          <legend><i class="fas fa-vials" style="color: #c4e80c;"></i> Test Recommendations</legend>
          <textarea rows="2" name="testRecommendations" placeholder="e.g., perform OCT scan, measure IOP…"></textarea>
<<<<<<< HEAD
=======
=======
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
        </fieldset>

        <button type="submit" class="submit-btn">Save Treatment</button>
      </form>
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
    </c:if>
  </div>
</div>

<!-- JS for dynamic medication fields -->
<script>
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

<<<<<<< HEAD
=======
=======
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
>>>>>>> 57b51863fd891538f57837ab03930237f9d7dc1d
>>>>>>> c1b86ed616a7e37cb68448dc0a8222500e655b04
</body>
</html>
