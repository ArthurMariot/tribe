const options = document.querySelectorAll(".team-name");

options.forEach((option) => {
  option.addEventListener('click', (event) => {
    options.forEach((option) => {
      option.classList.remove("active")
    })
    event.currentTarget.classList.toggle("active");
  })
});


const optionsHierarchy = document.querySelectorAll(".team-name-hierarchy");

optionsHierarchy.forEach((option) => {
  option.addEventListener('click', (event) => {
    optionsHierarchy.forEach((option) => {
      option.classList.remove("active")
    })
    event.currentTarget.classList.toggle("active");
  })
});

