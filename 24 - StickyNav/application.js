  const nav = document.querySelector('#main');
  const TopofNav = nav.offsetTop;

  function fixNav() {
  	if(window.scrollY >= TopofNav) {
  	  document.body.classList.add('fixed-nav');
  	  document.body.style.paddingTop = nav.offsetHeight + 'px';
  	} else {
  	  document.body.classList.remove('fixed-nav');
  	  document.body.style.paddingTop = 0;
  	}
  }

  window.addEventListener('scroll', fixNav);

