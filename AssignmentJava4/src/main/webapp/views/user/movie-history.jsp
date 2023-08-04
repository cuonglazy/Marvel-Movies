<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Filmlane - Movies History</title>

<!-- 
    - favicon
  -->
<link rel="shortcut icon" href="<c:url value="/views/user/view/readme-images/favicon.svg"></c:url>" type="image/svg+xml">

<!-- 
    - custom css link
<link rel="stylesheet" href="<c:url value="/views/user/view/assets/css/movies.css"></c:url>">
  -->
<style>
		/*-----------------------------------*\
 * #style.css
\*-----------------------------------*/

/**
 * copyright 2022 @codewithsadee
 */

/*-----------------------------------*\
 * #CUSTOM PROPERTY
\*-----------------------------------*/

:root {
    /**
   * colors
   */

    --rich-black-fogra-29: hsl(225, 25%, 9%);
    --rich-black-fogra-39: hsl(170, 21%, 5%);
    --raisin-black: hsl(228, 13%, 15%);
    --eerie-black: hsl(207, 19%, 11%);
    --light-gray: hsl(0, 3%, 80%);
    --gunmetal-1: hsl(229, 15%, 21%);
    --gunmetal-2: hsl(216, 22%, 18%);
    --gainsboro: hsl(0, 7%, 88%);
    --citrine: hsl(57, 97%, 45%);
    --xiketic: hsl(253, 21%, 13%);
    --gray-x: hsl(0, 0%, 74%);
    --white: hsl(0, 100%, 100%);
    --black: hsl(0, 0%, 0%);
    --jet: hsl(0, 0%, 20%);

    /**
   * typography
   */

    --ff-poppins: 'Poppins', sans-serif;

    --fs-1: 36px;
    --fs-2: 32px;
    --fs-3: 30px;
    --fs-4: 24px;
    --fs-5: 20px;
    --fs-6: 18px;
    --fs-7: 16px;
    --fs-8: 15px;
    --fs-9: 14px;
    --fs-10: 13px;
    --fs-11: 12px;
    --fs-12: 11px;

    --fw-500: 500;
    --fw-700: 700;

    /**
   * transition
   */

    --transition-1: 0.15s ease;
    --transition-2: 0.25s ease-in;

    /**
   * spacing
   */

    --section-padding: 100px;
}

/*-----------------------------------*\
 * #RESET
\*-----------------------------------*/

*,
*::before,
*::after {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

li {
    list-style: none;
}

a {
    text-decoration: none;
}

a,
img,
span,
input,
button,
ion-icon {
    display: block;
}

input {
    font: inherit;
    width: 100%;
    border: none;
}

select,
button {
    font: inherit;
    background: none;
    border: none;
    cursor: pointer;
}

html {
    font-family: var(--ff-poppins);
    scroll-behavior: smooth;
}

body {
    background: var(--eerie-black);
}

body.active {
    overflow: hidden;
}

/*-----------------------------------*\
 * #REUSED STYLE
\*-----------------------------------*/

.container {
    padding-inline: 15px;
}

/**
 * TITLES & SUBTITLES
 */

.h1,
.h2,
.h3 {
    color: var(--white);
    line-height: 1.2;
}

.h1 {
    font-size: var(--fs-1);
}

.h2 {
    font-size: var(--fs-2);
}

.h3 {
    font-size: var(--fs-6);
}

.section-subtitle {
    color: var(--citrine);
    font-size: var(--fs-11);
    font-weight: var(--fw-500);
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-bottom: 10px;
    text-align: center;
}

.section-title {
    text-align: center;
}

/**
 * BADGE
 */

.badge {
    color: var(--white);
    font-size: var(--fs-12);
    font-weight: var(--fw-700);
    border: 2px solid transparent;
    padding: 2px 10px;
}

.badge-fill {
    background: var(--white);
    color: var(--raisin-black);
}

.badge-outline {
    border-color: var(--white);
}

/**
 * MOVIE META
 */

.meta-wrapper {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items: center;
    gap: 15px 25px;
    margin-bottom: 50px;
}

.badge-wrapper,
.ganre-wrapper,
.date-time {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 5px 10px;
}

.ganre-wrapper > a {
    color: var(--gainsboro);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
    transition: var(--transition-1);
}

.ganre-wrapper > a:is(:hover, :focus) {
    color: var(--citrine);
}

.date-time {
    gap: 15px;
}

.date-time > div {
    display: flex;
    align-items: center;
    gap: 5px;
    color: var(--gainsboro);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
}

.date-time ion-icon {
    --ionicon-stroke-width: 50px;
    color: var(--citrine);
}

/**
 * BUTTONS
 */

.btn {
    color: var(--white);
    font-size: var(--fs-11);
    font-weight: var(--fw-700);
    text-transform: uppercase;
    letter-spacing: 2px;
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 16px 30px;
    border: 2px solid var(--citrine);
    border-radius: 50px;
    transition: var(--transition-1);
}

.btn > ion-icon {
    font-size: 18px;
}

.btn-primary {
    background: var(--rich-black-fogra-29);
}

.btn-primary:is(:hover, :focus) {
    background: var(--citrine);
    color: var(--xiketic);
}

/**
 * MOVIE CARD
 */

.movies-list {
    display: grid;
    gap: 50px;
}

.movie-card {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.movie-card .card-banner {
    position: relative;
    background: var(--gunmetal-1);
    aspect-ratio: 2 / 3;
    border-radius: 6px;
    overflow: hidden;
    margin-bottom: 20px;
    transition: var(--transition-1);
}

.movie-card .card-banner::after {
    content: '';
    position: absolute;
    inset: 0;
    transition: var(--transition-1);
}

.movie-card .card-banner:hover {
    box-shadow: 0 1px 2px hsla(0, 0%, 0%, 0.5);
}

.movie-card .card-banner:hover::after {
    background: hsla(0, 0%, 100%, 0.05);
}

.movie-card .card-banner img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.movie-card .title-wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
    margin-bottom: 10px;
}

.movie-card .card-title {
    color: var(--white);
    font-size: var(--fs-7);
    transition: var(--transition-1);
}

.movie-card .card-title:is(:hover, :focus) {
    color: var(--citrine);
}

.movie-card .title-wrapper time {
    color: var(--citrine);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
}

.movie-card .card-meta {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: 15px;
}

.movie-card .badge {
    color: var(--citrine);
}

.movie-card .duration {
    margin-left: auto;
}

.movie-card :is(.duration, .rating, .stars) {
    display: flex;
    align-items: center;
    gap: 5px;
    color: var(--gainsboro);
    font-size: var(--fs-11);
    font-weight: var(--fw-500);
}

.movie-card :is(.duration, .rating, .stars) ion-icon {
    font-size: 13px;
    --ionicon-stroke-width: 50px;
    color: var(--citrine);
}
.liked ion-icon[name='heart-outline'] {
    display: none;
}
.liked ion-icon[name='heart'] {
    display: inline-block;
}
/**
 * CUSTOM SLIDER & SCROLLBAR
 */

.movies-list.has-scrollbar {
    display: flex;
    justify-content: flex-start;
    gap: 30px;
    overflow-x: auto;
    scroll-snap-type: inline mandatory;
    padding-bottom: 25px;
}

.has-scrollbar::-webkit-scrollbar {
    height: 8px;
}

.has-scrollbar::-webkit-scrollbar-track {
    background: transparent;
    box-shadow: 0 0 0 2px var(--citrine);
    border-radius: 10px;
}

.has-scrollbar::-webkit-scrollbar-thumb {
    background: var(--gainsboro);
    border-radius: 10px;
    box-shadow: inset 0 1px 0 var(--black), inset 0 -1px 0 var(--black);
}

/*-----------------------------------*\
 * #HEADER
\*-----------------------------------*/

.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding-block: 25px;
    transition: var(--transition-2);
    z-index: 4;
}

.header.active {
    background: var(--eerie-black);
    padding-block: 20px;
}

.header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.header-actions {
    display: none;
}

.menu-open-btn {
    color: var(--white);
    font-size: 40px;
}

.navbar {
    position: fixed;
    top: 0;
    right: -300px;
    background: var(--eerie-black);
    width: 100%;
    max-width: 300px;
    height: 100%;
    box-shadow: -1px 0 3px hsl(0, 0%, 0%, 0.2);
    transition: 0.15s ease-in;
    visibility: hidden;
    z-index: 3;
}

.navbar.active {
    right: 0;
    visibility: visible;
    transition: 0.25s ease-out;
}

.navbar-top {
    padding: 30px 25px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.menu-close-btn {
    color: var(--white);
    font-size: 25px;
    padding: 5px;
}

.menu-close-btn ion-icon {
    --ionicon-stroke-width: 80px;
}

.navbar-list {
    border-top: 1px solid hsla(0, 0%, 100%, 0.1);
    margin-bottom: 30px;
}

.navbar-link {
    color: var(--white);
    font-size: var(--fs-8);
    font-weight: var(--fw-500);
    padding: 10px 25px;
    border-bottom: 1px solid hsla(0, 0%, 100%, 0.1);
    transition: var(--transition-1);
}

.navbar-link:is(:hover, :focus) {
    color: var(--citrine);
}

.navbar-social-list {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}

.navbar-social-link {
    font-size: 20px;
    color: var(--white);
    transition: var(--transition-1);
}

.navbar-social-link:is(:hover, :focus) {
    color: var(--citrine);
}

.overlay {
    position: fixed;
    inset: 0;
    background: hsla(204, 18%, 11%, 0.8);
    opacity: 0;
    pointer-events: none;
    z-index: 1;
    transition: var(--transition-2);
}

.overlay.active {
    opacity: 1;
    pointer-events: all;
}


/*-----------------------------------*\
 * #UPCOMING
\*-----------------------------------*/

.upcoming {
    background: url('../images/upcoming-bg.png') no-repeat;
    background-size: cover;
    background-position: center;
    padding-block: var(--section-padding);
}

.upcoming .flex-wrapper {
    margin-bottom: 50px;
}

.upcoming .section-title {
    margin-bottom: 30px;
}

.filter-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    gap: 10px;
}

.upcoming .filter-btn {
    color: var(--white);
    background: var(--raisin-black);
    font-size: var(--fs-11);
    font-weight: var(--fw-500);
    border: 2px solid var(--gunmetal-1);
    padding: 12px 26px;
    border-radius: 50px;
}

.upcoming .filter-btn:focus {
    border-color: var(--citrine);
}

.upcoming .movies-list > li {
    min-width: 100%;
    scroll-snap-align: start;
}

/*-----------------------------------*\
 * #SERVICE
\*-----------------------------------*/

.service {
    background: url('../images/service-bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    padding-block: var(--section-padding);
}

.service-banner {
    position: relative;
    margin-bottom: 50px;
    max-width: max-content;
}

.service-banner img {
    width: 100%;
}

.service-btn {
    position: absolute;
    bottom: 0;
    right: 86px;
    background: var(--citrine);
    color: var(--rich-black-fogra-29);
    font-size: var(--fs-11);
    text-transform: uppercase;
    font-weight: var(--fw-500);
    letter-spacing: 5px;
    display: flex;
    align-items: center;
    gap: 5px;
    transform: rotate(0.25turn);
    transform-origin: bottom right;
    padding: 28px 35px;
    border-radius: 6px;
}

.service-btn ion-icon {
    font-size: 30px;
    transform: rotate(-0.25turn);
}

.service-subtitle {
    position: relative;
    color: var(--gainsboro);
    font-size: var(--fs-11);
    font-weight: var(--fw-500);
    text-transform: uppercase;
    letter-spacing: 1px;
    padding-left: 50px;
    margin-bottom: 10px;
}

.service-subtitle::before {
    content: '';
    position: absolute;
    top: 7px;
    left: 0;
    width: 40px;
    height: 3px;
    background: var(--citrine);
}

.service-title {
    margin-bottom: 20px;
}

.service-text,
.service-card .card-text {
    color: var(--gray-x);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
    line-height: 1.8;
}

.service-text {
    margin-bottom: 40px;
}

.service-list > li:first-child {
    padding-bottom: 20px;
    border-bottom: 1px dashed hsla(0, 0%, 100%, 0.1);
    margin-bottom: 30px;
}

.service-card .card-icon {
    color: var(--white);
    width: 85px;
    height: 85px;
    display: grid;
    place-items: center;
    font-size: 40px;
    border-radius: 50%;
    outline: 1px dashed var(--citrine);
    outline-offset: 5px;
    margin: 5px;
    margin-bottom: 20px;
    transition: var(--transition-2);
}

.service-card:hover .card-icon {
    background: var(--citrine);
}

.service-card .card-title {
    margin-bottom: 10px;
}

/*-----------------------------------*\
 * #TOP RATED
\*-----------------------------------*/

.top-rated {
    background: url('../images/top-rated-bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    padding-block: var(--section-padding);
}

.top-rated .section-title {
    margin-bottom: 50px;
}

.top-rated .filter-list {
    gap: 15px;
    margin-bottom: 50px;
}

.top-rated .filter-btn {
    position: relative;
    background: var(--rich-black-fogra-39);
    color: var(--light-gray);
    font-size: var(--fs-10);
    font-weight: var(--fw-700);
    text-transform: uppercase;
    padding: 17px 25px;
    border-radius: 4px;
    box-shadow: inset 0 3px 7px hsla(0, 0%, 0%, 0.8);
}

.top-rated .filter-btn:focus {
    color: var(--citrine);
    text-shadow: 0 3px 25px hsla(57, 97%, 45%, 0.5);
}

.top-rated .filter-btn:focus::before,
.top-rated .filter-btn:focus::after {
    content: '';
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: var(--citrine);
    width: 2px;
    height: 15px;
}

.top-rated .filter-btn:focus::before {
    left: 0;
}

.top-rated .filter-btn:focus::after {
    right: 0;
}

/*-----------------------------------*\
 * #TV SEREIS
\*-----------------------------------*/

.tv-series {
    background: url('../images/tv-series-bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    padding-block: var(--section-padding);
}

.tv-series .section-title {
    margin-bottom: 50px;
}

/*-----------------------------------*\
 * #CTA
\*-----------------------------------*/

.cta {
    background: url('../images/cta-bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    text-align: center;
    padding-block: 50px;
}

.cta .title-wrapper {
    margin-bottom: 25px;
}

.cta-title {
    color: var(--eerie-black);
    font-size: var(--fs-3);
    text-transform: uppercase;
    line-height: 1.2;
    margin-bottom: 5px;
}

.cta-text {
    color: var(--eerie-black);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
    line-height: 1.8;
}

.cta .email-field {
    color: var(--eerie-black);
    font-size: var(--fs-9);
    padding: 18px 32px;
    border-radius: 4px;
    box-shadow: 0 3px 4px hsla(0, 0%, 0%, 0.2);
    margin-bottom: 15px;
}

.cta-form-btn {
    background: var(--eerie-black);
    color: var(--citrine);
    font-size: var(--fs-9);
    font-weight: var(--fw-700);
    text-transform: uppercase;
    letter-spacing: 1px;
    border: 2px solid var(--eerie-black);
    padding: 15px 34px;
    border-radius: 4px;
    margin-inline: auto;
    transition: var(--transition-1);
}

.cta-form-btn:is(:hover, :focus) {
    background: var(--citrine);
    color: var(--eerie-black);
}

/*-----------------------------------*\
 * #FOOTER
\*-----------------------------------*/

.footer-top {
    background: url('../images/footer-bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    padding-block: 80px 50px;
}

.footer-brand-wrapper .logo {
    width: max-content;
    margin-inline: auto;
    margin-bottom: 60px;
}

.footer-list,
.quicklink-list,
.social-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    gap: 5px;
}

.footer-link {
    color: var(--light-gray);
    font-size: var(--fs-9);
    font-weight: var(--fw-700);
    text-transform: uppercase;
    padding: 5px 15px;
    transition: var(--transition-1);
}

:is(.footer-link, .quicklink-link, .social-link):is(:hover, :focus) {
    color: var(--citrine);
}

.divider {
    height: 4px;
    margin-block: 40px;
    border-top: 1px solid var(--rich-black-fogra-29);
    border-bottom: 1px solid hsla(0, 0%, 100%, 0.1);
}

.quicklink-list {
    margin-bottom: 20px;
}

.quicklink-link {
    color: var(--gray-x);
    font-size: var(--fs-10);
    font-weight: var(--fw-500);
    text-transform: uppercase;
    padding: 2px 10px;
    transition: var(--transition-1);
}

.social-list {
    column-gap: 10px;
}

.social-link {
    background: var(--rich-black-fogra-29);
    color: var(--gray-x);
    font-size: 14px;
    width: 35px;
    height: 35px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    box-shadow: inset 0 4px 8px hsla(0, 0%, 0%, 0.25);
    transition: var(--transition-1);
}

.footer-bottom {
    padding-block: 25px;
}

.copyright {
    color: var(--gray-x);
    font-size: var(--fs-10);
    font-weight: var(--fw-500);
    line-height: 1.7;
    text-align: center;
    margin-bottom: 15px;
}

.copyright > a {
    display: inline-block;
    color: var(--citrine);
}

.footer-bottom-img {
    max-width: max-content;
    width: 100%;
    margin-inline: auto;
}

/*-----------------------------------*\
 * #GO TO TOP
\*-----------------------------------*/

.go-top {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background: var(--citrine);
    color: var(--eerie-black);
    width: 50px;
    height: 50px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    box-shadow: 0 1px 3px hsla(0, 0%, 0%, 0.5);
    opacity: 0;
    visibility: hidden;
    transition: var(--transition-2);
    z-index: 2;
}

.go-top.active {
    opacity: 1;
    visibility: visible;
}

/*-----------------------------------*\
 * #MOVIE DETAIL 
\*-----------------------------------*/

.movie-detail {
    background: url('../images/movie-detail-bg.png') no-repeat;
    background-size: cover;
    background-position: center;
    padding-top: 160px;
    padding-bottom: var(--section-padding);
}

.movie-detail-banner {
    position: relative;
    background: var(--gunmetal-1);
    max-width: 300px;
    margin-inline: auto;
    border-radius: 6px;
    overflow: hidden;
    margin-bottom: 50px;
}

.movie-detail-banner img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.play-btn {
    position: absolute;
    inset: 0;
    display: grid;
    place-items: center;
    font-size: 120px;
    color: var(--white);
    transition: var(--transition-1);
}

.play-btn:hover {
    background: hsla(0, 0%, 0%, 0.25);
}

.detail-subtitle {
    font-size: var(--fs-5);
    color: var(--citrine);
    font-weight: var(--fw-700);
    margin-bottom: 10px;
}

.detail-title {
    margin-bottom: 20px;
}

.detail-title strong {
    color: var(--citrine);
}

.movie-detail .meta-wrapper {
    margin-bottom: 30px;
}

.storyline {
    color: var(--gray-x);
    font-size: var(--fs-9);
    font-weight: var(--fw-500);
    line-height: 1.8;
    margin-bottom: 40px;
}

.details-actions {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 20px 40px;
    max-width: 525px;
    background: var(--gunmetal-2);
    padding: 25px;
    border: 1px solid var(--jet);
    border-radius: 4px;
    margin-bottom: 30px;
}

.details-actions .share ion-icon {
    font-size: 25px;
    color: var(--white);
    margin-inline: auto;
}

.details-actions .share span {
    color: var(--gainsboro);
    font-size: var(--fs-11);
    transition: var(--transition-1);
}

.details-actions .share:is(:hover, :focus) span {
    color: var(--citrine);
}

.details-actions .title {
    color: var(--white);
    font-weight: var(--fw-700);
}

.details-actions .text {
    font-size: var(--fs-11);
    color: var(--gainsboro);
}

.details-actions .btn-primary {
    font-size: 10px;
    padding: 13px 26px;
    letter-spacing: 0;
    background: transparent;
}

.details-actions .btn-primary:is(:hover, :focus) {
    background: var(--citrine);
}

.details-actions1 {
    display: flex;
    flex-wrap: wrap;
    gap: 18px 8px;
    max-width: 325px;
    padding: 1px;
}
.details-actions1 .share ion-icon {
    font-size: 5px;
    color: var(--white);
    margin-inline: auto;
}

.details-actions1 .share span {
    color: var(--gainsboro);
    font-size: var(--fs-11);
    transition: var(--transition-1);
}

.details-actions1 .share:is(:hover, :focus) span {
    color: var(--citrine);
}

.details-actions1 .title {
    color: var(--white);
    font-weight: var(--fw-700);
}

.details-actions1 .text {
    font-size: var(--fs-11);
    color: var(--gainsboro);
}

.details-actions1 .btn-primary {
    font-size: 10px;
    padding: 3px 13px;
    letter-spacing: 0;
    background: transparent;
}

.details-actions1 .btn-primary:is(:hover, :focus) {
    background: var(--citrine);
}

.download-btn {
    max-width: max-content;
    background: var(--citrine);
    color: var(--rich-black-fogra-29);
    font-size: var(--fs-11);
    font-weight: var(--fw-500);
    text-transform: uppercase;
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 20px 35px;
    letter-spacing: 5px;
    border-radius: 6px;
}

.download-btn ion-icon {
    font-size: 16px;
}

/*-----------------------------------*\
 * #MEDIA QUERIES
\*-----------------------------------*/

/**
 * responsive for large than 550px screen
 */

@media (min-width: 550px) {
    /**
   * CUSTOM PROPERTY
   */

    :root {
        /**
     * typography
     */

        --fs-1: 42px;
    }

    /**
   * REUSED STYLE
   */

    .container {
        max-width: 540px;
        margin-inline: auto;
    }

    /* MOVIE CARD */

    .movies-list {
        grid-template-columns: 1fr 1fr;
        gap: 60px 30px;
    }

    /**
   * HERO
   */

    .hero {
        min-height: unset;
    }

    .hero-content {
        margin-top: 20px;
    }

    /**
   * UPCOMING
   */

    .upcoming .movies-list > li {
        min-width: calc(50% - 15px);
    }

    /**
   * SERVICE
   */

    .service-list > li:first-child {
        padding-bottom: 30px;
    }

    .service-card {
        display: flex;
        align-items: center;
        gap: 20px;
    }

    .service-card .card-icon {
        margin-bottom: 0;
    }

    .service-card .card-content {
        width: calc(100% - 115px);
    }

    /**
   * MOVIE DETAIL
   */

    .detail-subtitle {
        --fs-5: 22px;
    }

    .detail-title {
        --fs-1: 46px;
    }
}

/**
 * responsive for large than 768px screen
 */

@media (min-width: 768px) {
    /**
   * CUSTOM PROPERTY
   */

    :root {
        /**
     * typography
     */

        --fs-2: 36px;
    }

    /**
   * REUSED STYLE
   */

    .container {
        max-width: 720px;
    }

    /**
   * HEADER
   */

    .header .container {
        gap: 30px;
    }

    .header-actions {
        display: flex;
        margin-left: auto;
        align-items: center;
        gap: 27px;
    }

    .header-actions .btn-primary {
        display: none;
    }

    .search-btn {
        position: relative;
        color: var(--white);
    }

    .search-btn ion-icon {
        --ionicon-stroke-width: 80px;
    }

    .search-btn::after {
        content: '';
        position: absolute;
        top: 1px;
        right: -20px;
        background: hsla(0, 0%, 100%, 0.1);
        width: 2px;
        height: 14px;
    }

    .lang-wrapper {
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .lang-wrapper label {
        color: var(--citrine);
        font-size: 20px;
    }

    .lang-wrapper select {
        color: var(--white);
        font-size: var(--fs-9);
        font-weight: var(--fw-700);
    }

    .lang-wrapper option {
        color: var(--black);
    }

    /**
   * HERO
   */

    .hero-content {
        margin-top: 90px;
    }

    /**
   * SERVICE
   */

    .service-btn {
        right: -20px;
        padding: 40px 50px;
    }

    .service-content {
        padding-inline: 40px;
    }

    /**
   * CTA
   */

    .cta-form {
        position: relative;
        max-width: 530px;
        margin-inline: auto;
    }

    .cta .email-field {
        margin-bottom: 0;
    }

    .cta-form-btn {
        position: absolute;
        top: 2px;
        right: 2px;
        bottom: 2px;
    }

    /**
   * FOOTER
   */

    .footer-brand-wrapper .logo {
        margin: 0;
    }

    .footer-brand-wrapper,
    .quicklink-wrapper,
    .footer-bottom .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .quicklink-list {
        margin-bottom: 0;
    }

    .copyright {
        margin-bottom: 0;
    }

    .footer-bottom-img {
        margin-inline: 0;
    }

    /**
   * MOVIE DETAIL
   */

    .detail-subtitle {
        --fs-5: 26px;
    }

    .detail-title {
        --fs-1: 50px;
    }
}

/**
 * responsive for large than 992px screen
 */

@media (min-width: 992px) {
    /**
   * REUSED STYLE
   */

    .container {
        max-width: 960px;
    }

    /* MOVIE CARD */

    .movies-list {
        grid-template-columns: repeat(3, 1fr);
    }

    /**
   * HEADER
   */

    .header.active {
        padding-block: 5px;
    }

    .menu-open-btn,
    .navbar-top,
    .navbar-social-list {
        display: none;
    }

    .navbar {
        all: unset;
        margin-left: auto;
    }

    .header-actions {
        order: 1;
        margin-left: 0;
    }

    .navbar-list {
        all: unset;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .navbar-link {
        border-bottom: none;
        font-size: var(--fs-9);
        font-weight: var(--fw-700);
        text-transform: uppercase;
        padding: 30px 15px;
    }

    .overlay {
        display: none;
    }

    /**
   * HERO
   */

    .hero {
        background-position: right;
    }

    .hero .container {
        width: 950px;
    }

    .hero-content {
        margin-top: 100px;
        max-width: 600px;
    }

    /**
   * UPCOMING
   */

    .upcoming .flex-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .upcoming :is(.section-subtitle, .section-title) {
        text-align: left;
    }

    .upcoming .section-title {
        margin-bottom: 0;
    }

    .upcoming .movies-list > li {
        min-width: calc(33.33% - 20px);
    }

    /**
   * SERVICE
   */

    .service .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 70px;
    }

    .service-content {
        padding-inline: 0;
        width: calc(100% - 470px);
    }

    .service-banner {
        margin-bottom: 0;
    }

    .service-btn {
        right: 111px;
    }

    /**
   * CTA
   */

    .cta {
        text-align: left;
    }

    .cta .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .cta .title-wrapper {
        margin-bottom: 0;
        width: 100%;
    }

    .cta-form {
        margin-inline: 0;
        max-width: unset;
        width: 100%;
    }

    /**
   * MOVIE DETAIL
   */

    .movie-detail {
        padding-bottom: 200px;
    }

    .movie-detail .container {
        position: relative;
        display: flex;
        align-items: center;
        gap: 50px;
    }

    .movie-detail-banner,
    .details-actions,
    .details-actions1 {
        margin: 0;
    }

    .download-btn {
        position: absolute;
        left: 15px;
        bottom: -80px;
    }
}

/**
 * responsive for large than 1200px screen
 */

@media (min-width: 1200px) {
    /**
   * CUSTOM PROPERTY
   */

    :root {
        /**
     * typography
     */

        --fs-1: 60px;
        --fs-4: 26px;
    }

    /**
   * REUSED STYLE
   */

    .container {
        max-width: 1320px;
    }

    /* MOVIE CARD */

    .movies-list {
        grid-template-columns: repeat(4, 1fr);
    }

    /**
   * HEADER
   */

    .navbar {
        margin-inline: auto;
    }

    .header-actions .btn-primary {
        display: block;
        --fs-11: 12px;
        padding: 2px 23px;
        letter-spacing: 1px;
    }

    /**
   * HERO
   */

    .hero .container {
        width: 1320px;
    }

    /**
   * UPCOMING
   */

    .upcoming .movies-list > li {
        min-width: calc(25% - 22.5px);
    }

    /**
   * SERVICE
   */

    .service-content {
        width: calc(100% - 700px);
    }

    .service-btn {
        right: -20px;
    }

    .service-list,
    .service-title {
        max-width: 480px;
    }

    /**
   * CTA
   */

    .cta .container {
        max-width: 1150px;
    }

    /**
   * MOVIE DETAIL
   */

    .movie-detail {
        padding-bottom: var(--section-padding);
    }

    .movie-detail-content {
        max-width: 620px;
    }

    .detail-title {
        --fs-1: 60px;
    }

    .download-btn {
        left: auto;
        right: 15px;
        bottom: 0;
        transform: rotate(0.25turn) translateY(100%);
        transform-origin: bottom right;
        padding: 40px 50px;
    }
}
		
</style>
<!-- 
    - google font link
  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">
</head>

<body id="#top">

	<!-- 
    - #HEADER
  -->

	<%@include file="/views/user/view/header_project.jsp"%>



	<!-- 
  	Main movie favourite
   -->
	<%@include file="/views/user/view/main-movie-history.jsp"%>




	<!-- 
    - #FOOTER
  -->

	<%@include file="/views/user/view/fooder.jsp"%>




	<!-- 
    - #GO TO TOP
  -->

	<a href="#top" class="go-top" data-go-top> <ion-icon
			name="chevron-up"></ion-icon>
	</a>





	<!-- 
    - custom js link
	<script src="<c:url value="/views/user/view/assets/js/movies.js"></c:url>"></script>
  -->
	<script>
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
	
	
	</script>
	
	<!-- 
    - ionicon link
  -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>

</html>