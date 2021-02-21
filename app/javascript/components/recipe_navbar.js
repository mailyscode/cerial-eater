const scrollNavbar = () => {
     // When the event DOMContentLoaded occurs, it is safe to access the DOM
      // When the user scrolls the page, execute myFunction

      // Get the navbar
      var navbar = document.getElementById("navbar");

      if (navbar) {
        window.addEventListener('scroll', initNavbarOnScroll);

        // Get the offset position of the navbar
        var sticky = navbar.offsetTop;

        // Add the sticky class to the navbar when you reach its scroll position.
        // Remove "sticky" when you leave the scroll position

        function initNavbarOnScroll() {
          if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky", "top-0", "bg-white-light", "transition", "duration-500", "bg-opacity-90");
          } else {
            navbar.classList.remove("sticky", "top-0", "bg-white-light", "bg-opacity-90");
          }
        }
      }
}


export { scrollNavbar };
