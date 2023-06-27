document.addEventListener("DOMContentLoaded", function(event) {
   
    const showNavbar = (toggleId, navId, bodyId, headerId) =>{
    const toggle = document.getElementById(toggleId),
    nav = document.getElementById(navId),
    bodypd = document.getElementById(bodyId),
    headerpd = document.getElementById(headerId)
    
    // Validate that all variables exist
    if(toggle && nav && bodypd && headerpd){
    toggle.addEventListener('click', ()=>{
    // show navbar
    nav.classList.toggle('show')
    // change icon
    toggle.classList.toggle('bx-x')
    // add padding to body
    bodypd.classList.toggle('body-pd')
    // add padding to header
    headerpd.classList.toggle('body-pd')
    })
    }
    }
    
    showNavbar('header-toggle','nav-bar','body-pd','header')
    
    /*===== LINK ACTIVE =====*/
    const linkColor = document.querySelectorAll('.nav_link')
    
    function colorLink(){
    if(linkColor){
    linkColor.forEach(l=> l.classList.remove('active'))
    this.classList.add('active')
    }
    }
    linkColor.forEach(l=> l.addEventListener('click', colorLink))
    
     // Your code to run since DOM is loaded and ready
    });


    // graficas

    const labels = ['Enero', 'Febrero', 'Marzo', 'Abril']

    const dataset1 = {
        label: "Dataset 1",
        data: [10, 55, 60, 120],
        borderColor: 'rgba(248, 37, 37, 0.8)',
        fill: false,
        tension: 0.1
    };
    
    const dataset2 = {
        label: "Dataset 2",
        data: [5, 44, 55, 100],
        borderColor: 'rgba(69, 248, 84, 0.8)',
        fill: false,
        tension: 0.1
    };
    
    const dataset3 = {
        label: "Dataset 3",
        data: [20, 40, 55, 120],
        borderColor: 'rgba(69, 140, 248, 0.8)',
        fill: false,
        tension: 0.1
    };
    
    const dataset4 = {
        label: "Dataset 4",
        data: [18, 40, 20, 100],
        borderColor: 'rgba(245, 40, 145, 0.8)',
        fill: false,
        tension: 0.1
    };
    
    const graph = document.querySelector("#grafica");
    
    const data = {
        labels: labels,
        datasets: [dataset1,dataset2,dataset3,dataset4]
    };
    
    const config = {
        type: 'line',
        data: data,
    };
    
    new Chart(graph, config);