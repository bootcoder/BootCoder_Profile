$(document).ready(function(){
  console.log("Document Ready");

  $('.popup').on('click', function(event){
    console.log("CLICKED Popup!");
    event.preventDefault();
  })

  $('.navbar-nav>li>a').on('click', function(){
    $('.navbar-collapse').collapse('hide');
  });

  if (window.innerWidth < 768) {
    $('.navbar-brand').text('HTC');
  }

  $('#debug-toggle').on('click', function(event){
    console.log('TOGGLE CSS BUGGER');
    event.preventDefault();
    var viewPortWidth = window.innerWidth + " Pixels";
    var docBody = $('#debuggable');

    $('#view-port-width-bugger').text(viewPortWidth)
    $(docBody).toggleClass('debug');
    $('#bs-bugger').slideToggle(500, 'swing');
  })

  if (window.innerWidth > 960) {
    $('#tech-img-00').addClass('pulse');

    $('.tech-item').hover(
      function(){
        var techId = this.id.split('-').at(-1);
        var techTip = $(`#tech-tip-${techId}`);
        var techImg = $(`#tech-img-${techId}`);

        $('.pulse').removeClass('pulse')
        techTip.toggleClass('tech-tip-enlarged');
        techImg.toggleClass('tech-img-shrunken')
      },

      function(){
        var techId = this.id.split('-').at(-1);
        var techTip = $(`#tech-tip-${techId}`);
        var techImg = $(`#tech-img-${techId}`);

        techTip.toggleClass('tech-tip-enlarged');
        techImg.toggleClass('tech-img-shrunken')
      }
    )
  }


  if ( $(window).width() < 1023 ) {
    $('.bg-space').addClass('gray')
    $('.box-team').removeClass('wow')
    $('.service-box').removeClass('wow')
    $('.mobile-js').removeClass('max-400')
    $('.mobile-js').removeClass('max-500')
    $('.mobile-js').addClass('pad-5')
    $('.mobile-js').addClass('white')
    $('.gallery').removeClass('bg-site')
  }

});
