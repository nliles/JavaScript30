document.addEventListener("DOMContentLoaded", function() {

  const panels = document.querySelectorAll('.panel');

  function toggleOpen(event) {
      this.classList.toggle('open');
      const texts = document.querySelectorAll(".outside");  
      texts.forEach(text => text.style.visibility = text.style.visibility === 'hidden' ? '' : 'hidden');  
      // text.style.visibility = text.style.visibility === 'hidden' ? '' : 'hidden';
    }

  function toggleActive(e) {
    if(e.propertyName.includes('flex')) {
      this.classList.toggle('open-active');
    }
  }


  panels.forEach(panel => panel.addEventListener('click', toggleOpen));
  panels.forEach(panel => panel.addEventListener('transitionend', toggleActive));

});