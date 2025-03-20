//  document.addEventListener('turbolinks:load', () => {
//   const menuButton = document.querySelector('.menu-button');
//    const navLinks = document.querySelector('.nav-links');

//    if (menuButton && navLinks) {
//     menuButton.addEventListener('click', () => {
//        navLinks.classList.toggle('active');
//     });
//   }
//  });

function toggleMenu() {
  const navLinks = document.querySelector('.nav-links');
  navLinks.classList.toggle('active');
}


document.addEventListener('turbo:load', () => {
  const menuToggle = document.querySelector('.menu-toggle');
  const navLinks = document.querySelector('.nav-links');

  // Toggle del menú principal
  menuToggle.addEventListener('click', () => {
    navLinks.classList.toggle('active');
  });

  // Toggle del dropdown (submenú) de la sesión del usuario
  const dropdownToggle = document.querySelector('.dropdown-toggle');
  const dropdownMenu = document.querySelector('.dropdown-menu');

  dropdownToggle.addEventListener('click', (event) => {
    event.preventDefault(); // Prevenir el comportamiento por defecto
    dropdownMenu.classList.toggle('show');
  });
});
