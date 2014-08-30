$(document).ready(function(){
	console.log("Document Ready");
	var owl = $("#owl-slider");
 
  owl.owlCarousel({
      items : 2, //10 items above 1000px browser width
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [900,1], // betweem 900px and 601px
      itemsTablet: [600,1], //2 items between 600 and 0
      itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
      autoPlay: true
	});
});
