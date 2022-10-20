const hamburger = document.querySelector(".hamburger");
const navMenu = document.querySelector(".menu");

hamburger.addEventListener("click", mobileMenu);

function mobileMenu() {
    hamburger.classList.toggle("active");
    navMenu.classList.toggle("active");
}







const buttons = document.querySelectorAll(".menu-link");

console.log('fired')

let app = {};

function getData() {

    fetch("./data.json")
        .then(res => res.json())
        .then(data => {

            app = data;
            console.log(data);

        })
        .catch(error => console.error(error));
}


function showData(event) {
    let panel = document.querySelector(".fav-section")
    if (panel) {
        panel.classList.remove("hidden");

        let containers = panel.children;

        containers[0].querySelector('img').src = `images/${app[this.dataset.key].image}`;

        Heading.textContent = app[this.dataset.key].type;
        containers[2].textContent = app[this.dataset.key].stat;
        containers[3].textContent = app[this.dataset.key].desc;
        containers[4].textContent = app[this.dataset.key].heading;
    }
    else {
        panel.classList.add("hidden");
    }
};

buttons.forEach(button => (button.addEventListener("click", showData)));


getData();

