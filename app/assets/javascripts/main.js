$(document).ready(function(){
  console.log("Document Ready");
  var owl = $("#owl-slider");
  var gallery = $("#gallery-slider")
 
  owl.owlCarousel({
      items : 2, 
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [900,1], // betweem 900px and 601px
      itemsTablet: [600,1], //1 item between 600 and 0
      itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
      autoPlay: true
  });

  gallery.owlCarousel({
      transitionStyle: "goDown",
      items : 2, 
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [900,1], // betweem 900px and 601px
      itemsTablet: [600,1], //1 item between 600 and 0
      itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
      autoPlay: true
  });

  $('.popup').on('click', function(event){
    console.log("CLICKDD ME!");
    event.preventDefault();
  })

  if ( $(window).width() < 1024 ) {
    $('.box-team').removeClass('wow')
    $('.name-badge').removeClass('max-400')
    $('.name-badge').addClass('max-350')

  }

});
    
