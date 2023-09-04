window.addEventListener("load", function () {
    const preloader = document.querySelector(".preloader");
    const content = document.querySelector(".contenido-main");
  
    setTimeout(function () {
      preloader.style.display = "none";
      content.style.display = "block";
    }, 2000); // Cambia este valor al tiempo que quieras
  });
  