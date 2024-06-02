window.onscroll = function() {stickyNavbar()};

var nav = document.getElementById("nav");
var sticky = nav.offsetTop;

function stickyNavbar() {
    if (window.pageYOffset >= sticky) {
        nav.classList.add("sticky");
    } else {
        nav.classList.remove("sticky");
    }
}
