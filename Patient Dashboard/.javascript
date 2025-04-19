document.getElementById('appointmentForm').addEventListener('submit', function(e) {
  e.preventDefault();
  alert("Your appointment has been submitted successfully!");
  this.reset();
});
