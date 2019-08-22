import './slideout.min.js';

const slideout = new Slideout({
  'panel': document.getElementById('panel'),
  'menu': document.getElementById('menu'),
  'padding': 256,
  'tolerance': 70
});

document.getElementById('openSlideOut').addEventListener('click', (e) => {
  slideout.open()
})

document.getElementById('closeSlideOut').addEventListener('click', (e) => {
  slideout.close()
})
