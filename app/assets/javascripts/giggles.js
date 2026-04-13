// Giggle carousel — reads image paths from data-images attribute and builds carousel items.
(function () {
  function buildCarousel(el) {
    var paths;
    try {
      paths = JSON.parse(el.dataset.images || '[]');
    } catch (e) {
      return;
    }

    var inner = el.querySelector('.carousel-inner');
    if (!inner || paths.length === 0) return;

    // Fisher-Yates shuffle
    for (var i = paths.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));
      var tmp = paths[i]; paths[i] = paths[j]; paths[j] = tmp;
    }

    inner.innerHTML = '';
    paths.forEach(function (src, idx) {
      var item = document.createElement('div');
      item.className = 'carousel-item' + (idx === 0 ? ' active' : '');

      var img = document.createElement('img');
      img.src = src;
      img.alt = src.replace(/.*\//, '').replace(/\.[^.]+$/, '');
      img.className = 'image-meme image-responsive max-500 pad-5P';

      item.appendChild(img);
      inner.appendChild(item);
    });
  }

  function init() {
    var el = document.getElementById('giggle_carousel');
    if (el) buildCarousel(el);
  }

  document.addEventListener('DOMContentLoaded', init);
  document.addEventListener('turbo:load', init);
})();
