import './slideout.min.js';

const slideout = new Slideout({
  'panel': document.getElementById('panel'),
  'menu': document.getElementById('menu'),
  'padding': 320,
  'tolerance': 70
});

document.getElementById('openSlideOut').addEventListener('click', (e) => {
  if (slideout._opened)
    {
      slideout.close();
    }
  else
  {
    slideout.open()
  }
})

document.getElementById('panel').addEventListener('click', (e) => {
  slideout.close()
})
