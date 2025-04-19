// Intersection Observer animation for intro section
const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('show');
      }
    });
  }, {
    threshold: 0.2,
  });
  
  const introSection = document.querySelector('.div-intro');
  if (introSection) {
    observer.observe(introSection);
  }
  
  // Automatic slideshow for promo content
  const slides = document.querySelectorAll('.promo-slideshow .slide');
  let currentSlide = 0;
  if (slides.length > 0) {
    slides[currentSlide].classList.add('active');
    setInterval(() => {
      slides[currentSlide].classList.remove('active');
      currentSlide = (currentSlide + 1) % slides.length;
      slides[currentSlide].classList.add('active');
    }, 3000);
  }
  
  // Scroll-triggered fade-in animation
  window.addEventListener('scroll', () => {
    const fadeElements = document.querySelectorAll('.fade-in-up');
    const triggerPoint = window.innerHeight * 0.9;
  
    fadeElements.forEach(el => {
      const rect = el.getBoundingClientRect();
      if (rect.top < triggerPoint && !el.classList.contains('active')) {
        el.classList.add('active');
      }
    });
  });

  //Promo-shop Sideshow animation
  window.addEventListener('DOMContentLoaded', () => {
    const slides = document.querySelectorAll('.promo-slideshow .slide');
    let currentSlide = 0;
  
    if (slides.length > 0) {
      setInterval(() => {
        slides[currentSlide].classList.remove('active');
        currentSlide = (currentSlide + 1) % slides.length;
        slides[currentSlide].classList.add('active');
      }, 4000); // Change image every 4 seconds (adjust as needed)
    }
  });

  //For doctor Dictory Search
  function filterDoctors() {
    const input = document.getElementById("searchInput").value.toLowerCase();
    const cards = document.querySelectorAll(".doctor-card");
  
    cards.forEach(card => {
      const name = card.getAttribute("data-name");
      if (name.includes(input)) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  }
  //For doctor Dictory Search
  function filterDoctors() {
    const input = document.getElementById("searchInput").value.toLowerCase();
    const cards = document.querySelectorAll(".doctor-card");
  
    cards.forEach(card => {
      const name = card.getAttribute("data-name");
      if (name.includes(input)) {
        card.style.display = "block";
      } else {
        card.style.display = "none";
      }
    });
  }
  
  