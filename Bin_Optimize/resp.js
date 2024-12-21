// This file is use to maintain the site in a mobile phone (resp.js)

const burger = document.querySelector('.burger');
const navbar = document.querySelector('.navbar');
const navList = document.querySelector('.nav-list');
const searchInput = document.querySelector('#search');
const searchButton = document.querySelector('.btn');

burger.addEventListener('click', () => {
    navList.classList.toggle('v-class-resp');
    searchInput.classList.toggle('v-class-resp');
    searchButton.classList.toggle('v-class-resp');
    navbar.classList.toggle('h-nav-resp');
});

// This containt is use to Image slider for a three images in a site.  (Start)
let currentIndex = 0;
const slides = document.querySelectorAll('.carousel-image');

function showSlide(index) {
      if (index < 0) {
            index = slides.length - 1;
      } else if (index >= slides.length) {
            index = 0;
      }
      currentIndex = index;
      const offset = -currentIndex * 100;
      document.querySelector('.carousel-slide').style.transform = `translateX(${offset}%)`;
}

function changeSlide(direction) {
      currentIndex += direction;
      showSlide(currentIndex);
}
setInterval(() => {
      changeSlide(1);
}, 3000);

// (Stop)

