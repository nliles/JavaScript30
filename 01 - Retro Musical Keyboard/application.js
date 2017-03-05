document.addEventListener("DOMContentLoaded", function() {
    function removeTransition(e) {
      if (e.propertyName !== 'transform') return;
      this.classList.remove('playing');
    }

    function playSound(e) {
      const key = document.querySelector(`div[data-key="${e.keyCode}"]`);
      const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`);
      if (!key) return;
      if (!audio) return;
      key.classList.add('playing');
      audio.currentTime = 0;
      audio.play();
    }

    window.addEventListener('keydown', playSound);
    const keys = document.querySelectorAll('.note');
    keys.forEach(key => key.addEventListener('transitionend', removeTransition));

});
