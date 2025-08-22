// Mantengo los mismos IDs que tenías para que la funcionalidad sea idéntica
document.addEventListener('DOMContentLoaded', function() {
  const menuBtn = document.getElementById('menu-btn');
  const mobileMenu = document.getElementById('mobile-menu');

  if (menuBtn && mobileMenu) {
    menuBtn.addEventListener('click', () => {
      mobileMenu.classList.toggle('hidden');
    });
  }
});



document.addEventListener("DOMContentLoaded", () => {
  // Evento personalizado: clic en el botón de WhatsApp
  const whatsappBtn = document.querySelector(".whatsapp-btn");
  if (whatsappBtn) {
    whatsappBtn.addEventListener("click", () => {
      gtag('event', 'click_whatsapp', {
        'event_category': 'engagement',
        'event_label': 'Botón WhatsApp'
      });
    });
  }
});

// Evento: medir cuánto tiempo estuvo el usuario en la página (30s)
setTimeout(() => {
  gtag('event', '30_seconds', {
    'event_category': 'engagement',
    'event_label': 'Usuario estuvo 30s en la página'
  });
}, 30000); // 30 segundos



