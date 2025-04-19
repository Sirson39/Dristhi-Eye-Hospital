
    const ctx = document.getElementById('appointmentsChart').getContext('2d');
    const appointmentsChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        datasets: [{
          label: 'Appointments',
          data: [45, 68, 70, 58, 90, 78],
          fill: true,
          backgroundColor: 'rgba(19, 95, 160, 0.2)',
          borderColor: '#135fa0',
          tension: 0.3
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            labels: {
              color: '#135fa0',
              font: {
                size: 14
              }
            }
          }
        },
        scales: {
          y: {
            beginAtZero: true,
            ticks: {
              color: '#135fa0'
            }
          },
          x: {
            ticks: {
              color: '#135fa0'
            }
          }
        }
      }
    });
