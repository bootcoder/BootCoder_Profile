$(document).ready(function(){
  console.log("Document Ready");
  // var owl = $("#owl-slider");
  // var gallery = $("#gallery-slider")

  // // debugger;
  // owl.owlCarousel({
  //     items : 2,
  //     itemsDesktop : [1199,2],
  //     itemsDesktopSmall : [900,1], // betweem 900px and 601px
  //     itemsTablet: [600,1], //1 item between 600 and 0
  //     itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
  //     autoPlay: true,
  //     navigation: true,
  //     paginationSpeed: 800,
  //     slideSpeed: 200,
  //     rewindSpeed: 4000,
  //     stopOnHover: true
  // });

  // gallery.owlCarousel({
  //     transitionStyle: "goDown",
  //     items : 2,
  //     itemsDesktop : [1199,2],
  //     itemsDesktopSmall : [900,1], // betweem 900px and 601px
  //     itemsTablet: [600,1], //1 item between 600 and 0
  //     itemsMobile : false, // itemsMobile disabled - inherit from itemsTablet option
  //     autoPlay: true
  // });

  $('.popup').on('click', function(event){
    console.log("CLICKDD ME!");
    event.preventDefault();
  })

  // $(function () {
  //   console.log('init tooltip');
  //   $('[data-toggle="tooltip"]').tooltip();
  // })

  $('.tech-item').hover(
    function(){
      let techId = this.id.split('-').at(-1);
      let techTip = $(`#tech-tip-${techId}`);
      let techImg = $(`#tech-img-${techId}`);

      techImg.addClass('tech-img-shrunken')
      techTip.addClass('tech-tip-enlarged');
    },

    function(){
      let techId = this.id.split('-').at(-1);
      let techTip = $(`#tech-tip-${techId}`);
      let techImg = $(`#tech-img-${techId}`);

      techTip.removeClass('tech-tip-enlarged');
      techImg.removeClass('tech-img-shrunken')
    }
  )


  if ( $(window).width() < 1023 ) {
    // $('.bg-space').removeClass('bg-space black')
    $('.bg-space').addClass('gray')
    $('.box-team').removeClass('wow')
    $('.service-box').removeClass('wow')
    $('.mobile-js').removeClass('max-400')
    $('.mobile-js').removeClass('max-500')
    // $('.mobile-js').addClass('max-90P')
    // $('.mobile-js').addClass('max-75P')
    $('.mobile-js').addClass('pad-5')
    $('.mobile-js').addClass('white')

  }

});
