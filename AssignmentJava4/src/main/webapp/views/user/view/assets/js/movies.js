'use strict';

/**
 * navbar variables
 */

const navOpenBtn = document.querySelector("[data-menu-open-btn]");
const navCloseBtn = document.querySelector("[data-menu-close-btn]");
const navbar = document.querySelector("[data-navbar]");
const overlay = document.querySelector("[data-overlay]");

const navElemArr = [navOpenBtn, navCloseBtn, overlay];

for (let i = 0; i < navElemArr.length; i++) {

  navElemArr[i].addEventListener("click", function () {

    navbar.classList.toggle("active");
    overlay.classList.toggle("active");
    document.body.classList.toggle("active");

  });

}



/**
 * header sticky
 */

const header = document.querySelector("[data-header]");

window.addEventListener("scroll", function () {

  window.scrollY >= 10 ? header.classList.add("active") : header.classList.remove("active");

});



/**
 * go top
 */

const goTopBtn = document.querySelector("[data-go-top]");

window.addEventListener("scroll", function () {

  window.scrollY >= 500 ? goTopBtn.classList.add("active") : goTopBtn.classList.remove("active");

});

const likeButtons = document.querySelectorAll('.like-button')


likeButtons.forEach(function (likeButton) {
    likeButton.addEventListener('click', function () {
        if (likeButton.classList.contains('liked')) {
            likeButton.classList.remove('liked')
            likeButton.innerHTML =
                '<ion-icon name="heart-outline"></ion-icon><span>Like</span>'
        } else {
            likeButton.classList.add('liked')
            likeButton.innerHTML =
                '<ion-icon name="heart"></ion-icon><span>Unlike</span>'
        }
    })
})

const heartIcons = document.querySelectorAll('.heart-icon');

heartIcons.forEach((heartIcon) => {
  heartIcon.addEventListener('click', function () {
    const ratingValue = heartIcon.closest('.movie-card').querySelector('.rating-value');
    if (heartIcon.classList.contains('liked')) {
      heartIcon.classList.remove('liked');
      heartIcon.setAttribute('name', 'heart-outline');
      ratingValue.textContent = parseInt(ratingValue.textContent) - 1;
    } else {
      heartIcon.classList.add('liked');
      heartIcon.setAttribute('name', 'heart');
      ratingValue.textContent = parseInt(ratingValue.textContent) + 1;
    }
  });
});



