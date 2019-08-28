import './slideout.min.js';

const slideout = new Slideout({
  'panel': document.getElementById('panel'),
  'menu': document.getElementById('menu'),
  'padding': 320,
  'tolerance': 70
});

const panel = document.getElementById('panel')
const overlay = `<div id="panel_overlay" style="background-color: rgba(0, 0, 0, 0.7); z-index: 1000; position: absolute; height: 100%; width: 100%"> </div>`

document.getElementById('openSlideOut').addEventListener('click', (e) => {
  if (slideout._opened)
    {
      slideout.close();
      const overlayElement = document.getElementById("panel_overlay")
      if(overlayElement)
      {
        overlayElement.remove();
      }
    }
  else
  {
    slideout.open()
    panel.insertAdjacentHTML('afterBegin', overlay);

  }
})

document.getElementById('panel').addEventListener('click', (e) => {
  slideout.close()
  const overlayElement = document.getElementById("panel_overlay")
  if(overlayElement)
  {
    overlayElement.remove();
  }
})
