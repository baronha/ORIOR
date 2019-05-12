/*!
 * Start Bootstrap - Grayscale Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// jQuery to collapse the navbar on scroll
function collapseNavbar() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
}

$(window).scroll(collapseNavbar);
$(document).ready(collapseNavbar);
//Modal Search

(function ($) {
    "use strict";


    $('.js-show-modal-search').on('click', function () {
        $('.modal-search-header').addClass('show-modal-search');
        $(this).css('opacity', '0');
    });

    $('.js-hide-modal-search').on('click', function () {
        $('.modal-search-header').removeClass('show-modal-search');
        $('.js-show-modal-search').css('opacity', '1');
    });

    $('.container-search-header').on('click', function (e) {
        e.stopPropagation();
    });


    $('.js-show-cart').on('click', function () {
        $('.js-panel-cart').addClass('show-header-cart');
    });

    $('.js-hide-cart').on('click', function () {
        $('.js-panel-cart').removeClass('show-header-cart');
    });

    /*==================================================================
    [ Cart ]*/
    $('.js-show-sidebar').on('click', function () {
        $('.js-sidebar').addClass('show-sidebar');
    });

    $('.js-hide-sidebar').on('click', function () {
        $('.js-sidebar').removeClass('show-sidebar');
    });

})(jQuery);
// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
  if ($(this).attr('class') != 'dropdown-toggle active' && $(this).attr('class') != 'dropdown-toggle') {
    $('.navbar-toggle:visible').click();
  }
});
 $(function(){
    $(window).scroll(function(){
        vitrihientai = $('html,body').scrollTop();
        console.log(vitrihientai);
        // mo rong 
        if(vitrihientai > 500) {
            $('.portfolio').addClass('bienra');
        }
        else if(vitrihientai < 500) {
            $('.portfolio').removeClass('bienra');
        }

     })
})
$(function(){
    $(window).scroll(function(){
        vitrihientai = $('html,body').scrollTop();
        console.log(vitrihientai);
        // mo rong 
        if(vitrihientai > 100) {
            $('.topbtn').addClass('appear');
        }
        else if(vitrihientai < 100) {
            $('.topbtn').removeClass('appear');
        }

     })
})

$(function(){
    $('#x').click(function(){
        $('html,body').animate({
            scrollTop:0
        }, 2000,"easeInOutExpo");
        return false;
    })
})
 $(function(){
    $(window).scroll(function(){
        vitrihientai = $('html,body').scrollTop();
        console.log(vitrihientai);
        // mo rong 
        if(vitrihientai > 1700) {
            $('.download-section').addClass('bienra');
        }
        else if(vitrihientai < 1700) {
            $('.download-section').removeClass('bienra');
        }

     })
})
$(function(){
    $('.lamp').click(function(){
        $('.on').addClass('offok');
        $('.off').addClass('onok');
        $('.off').removeClass('offok');
        $('.on').removeClass('onok');
        $('body').addClass('body');
        $('.fillcolor').addClass('change-fill');
        $('h2').css("color","white");
        $('.fa-star').addClass('ii');
        $('.ngoisao').addClass('ngoisaochoi');
        $('.cmtrow').addClass('cmtrow1');
        return false;
    })
})
$(function(){
$('.off').click(function(){
        $('.off').addClass('offok');
        $('.on').addClass('onok');
        $('.off').removeClass('onok');
        $('.on').removeClass('offok');
        $('body').removeClass('body');
        $('.fillcolor').removeClass('change-fill');
        $('h2').css("color","#2d3e50");
        $('.fa-star').removeClass('ii');
        $('.ngoisao').removeClass('ngoisaochoi');
        $('.cmtrow').removeClass('cmtrow1');
        return false;
    })
})
 // var $window = $(window);
 // var speed = 0.4;
 // function update(){
 // var ypos = $window.scrollTop();
 // $('.cont').each(function() {
 // var $element = $(this);
 // var height = $element.height();
 // $(this).css('backgroundPosition', '50% ' + Math.round((height - ypos) * speed) + 'px');
 // });
 // };
 // $window.bind('scroll', update);
$(document).ready(function() {
    $(window).bind('scroll', function() {
        parallax();
    });
});

function parallax() {
    var scrollPos = $(window).scrollTop();
    $('.cont').css('backgroundPosition', "50% " + Math.round(($('.cont').offset().top - scrollPos) * 0.3) + "px");
    $('#hand-rock').css('top',(3000 - (scrollPos * .9)) + 'px');
    $('.quote').css('top',(630 - (scrollPos * 0.2)) + 'px')
}









 //Map Snazzy
// [{
//             "featureType": "water",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 17
//             }]
//         }, {
//             "featureType": "landscape",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 20
//             }]
//         }, {
//             "featureType": "road.highway",
//             "elementType": "geometry.fill",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 17
//             }]
//         }, {
//             "featureType": "road.highway",
//             "elementType": "geometry.stroke",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 29
//             }, {
//                 "weight": 0.2
//             }]
//         }, {
//             "featureType": "road.arterial",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 18
//             }]
//         }, {
//             "featureType": "road.local",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 16
//             }]
//         }, {
//             "featureType": "poi",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 21
//             }]
//         }, {
//             "elementType": "labels.text.stroke",
//             "stylers": [{
//                 "visibility": "on"
//             }, {
//                 "color": "#000000"
//             }, {
//                 "lightness": 16
//             }]
//         }, {
//             "elementType": "labels.text.fill",
//             "stylers": [{
//                 "saturation": 36
//             }, {
//                 "color": "#000000"
//             }, {
//                 "lightness": 40
//             }]
//         }, {
//             "elementType": "labels.icon",
//             "stylers": [{
//                 "visibility": "off"
//             }]
//         }, {
//             "featureType": "transit",
//             "elementType": "geometry",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 19
//             }]
//         }, {
//             "featureType": "administrative",
//             "elementType": "geometry.fill",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 20
//             }]
//         }, {
//             "featureType": "administrative",
//             "elementType": "geometry.stroke",
//             "stylers": [{
//                 "color": "#000000"
//             }, {
//                 "lightness": 17
//             }, {
//                 "weight": 1.2
//             }]
//         }]
