// BootCoder Projects — Parallax rows + 3D tilt (Bootstrap 5 friendly)
(function () {
  function init() {
    var root = document.querySelector('#projects.bc-projects');
    if (!root) return;

    var rows  = Array.prototype.slice.call(root.querySelectorAll('.bc-parallax-row'));
    var cards = Array.prototype.slice.call(root.querySelectorAll('.project-3d'));
    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    // --- Row parallax on scroll (translateX based on section position)
    if (!reduceMotion) {
      var ticking = false;

      function updateParallax() {
        var vh = window.innerHeight;
        rows.forEach(function (row) {
          var r = row.getBoundingClientRect();
          if (r.bottom < 0 || r.top > vh) return; // off-screen
          var center = (r.top + r.height / 2) - vh / 2;
          var speed = parseFloat(row.dataset.speed || 0.2);
          row.style.transform = 'translateX(' + (-center * speed * 0.05) + 'px)';
        });
        ticking = false;
      }

      function onScroll() {
        if (!ticking) {
          requestAnimationFrame(updateParallax);
          ticking = true;
        }
      }

      window.addEventListener('scroll', onScroll, { passive: true });
      window.addEventListener('resize', updateParallax, { passive: true });
      updateParallax();
    }

    // --- Card tilt (pointer-driven 3D)
    if (!reduceMotion) {
      cards.forEach(function (card) {
        var rect;

        function onMove(e) {
          rect = rect || card.getBoundingClientRect();
          var x = (e.clientX - rect.left) / rect.width;   // 0..1
          var y = (e.clientY - rect.top) / rect.height;   // 0..1
          var rx = (0.5 - y) * 8;   // deg
          var ry = (x - 0.5) * 12;  // deg
          card.style.transform = 'perspective(900px) rotateX(' + rx + 'deg) rotateY(' + ry + 'deg)';
        }

        function reset() {
          rect = null;
          card.style.transform = 'perspective(900px) rotateX(0) rotateY(0)';
        }

        card.addEventListener('mousemove', onMove);
        card.addEventListener('mouseleave', reset);
        // Disable tilt on touch (to avoid sticky states)
        card.addEventListener('touchstart', function(){ card.style.transform = 'none'; }, { passive: true });
      });
    }
  }

  // Bootstrap 5 and Turbolinks/Hotwire friendly init
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
  document.addEventListener('turbo:load', init);
})();
