$(document).ready(function(){
  console.log("Document Ready");

  $('.popup').on('click', function(event){
    console.log("CLICKED Popup!");
    event.preventDefault();
  })

  // $(function () {
  //   console.log('init tooltip');
  //   $('[data-toggle="tooltip"]').tooltip();
  // })

  $('.tech-item').hover(
    function(){
      var techId = this.id.split('-').at(-1);
      var techTip = $(`#tech-tip-${techId}`);
      var techImg = $(`#tech-img-${techId}`);

      techImg.addClass('tech-img-shrunken')
      techTip.addClass('tech-tip-enlarged');
    },

    function(){
      var techId = this.id.split('-').at(-1);
      var techTip = $(`#tech-tip-${techId}`);
      var techImg = $(`#tech-img-${techId}`);

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
    $('.gallery').removeClass('bg-site')

  }

});
