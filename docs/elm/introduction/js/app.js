(function(){
  let slideshow = remark.create({
    sourceUrl: 'presentation.md'
  });
  slideshow.on('showSlide', once(function(){
    let samples = Array.prototype.slice.call(document.getElementsByTagName('pre'),0)
      .filter(function(sample){ return sample.classList.contains('sample')});
    samples.forEach(function(sample){
      let url = sample.innerText;
      fetch(url).then(function(response){
        response.text().then(function(sample_text){
          var code = document.createElement('code');
          code.innerText = sample_text;
          sample.childNodes[0].replaceWith(code);
          hljs.highlightBlock(sample);
        });
      });
    });
  }));

  function once(callback){
    var called = false;
    return function(){
      if (!called) {
        called = true;
        callback();
      }
    }
  }

  // Setup MathJax
  MathJax.Hub.Config({
    tex2jax: {
      skipTags: ['script', 'noscript', 'style', 'textarea', 'pre']
    }
  });
  MathJax.Hub.Configured();
})();
