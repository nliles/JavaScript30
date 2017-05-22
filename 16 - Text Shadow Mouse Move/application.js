const hero = document.querySelector('.hero');
const text = document.querySelector('h1');
const walk = 100;

function shadow(e) {
  const { offsetWidth: width, offsetHeight: height } = hero;
  const { offsetX: x, offsetY: y } = e;

  if (this !== e.target) {
    x = x + e.target.offsetX;
    y = y + e.target.offsetY;
  }

  const xWalk = Math.round((x / width * walk) - (walk / 2));
  const yWalk = Math.round((y / height * walk) - (walk / 2));

  text.style.textShadow = 
  `${xWalk}px ${yWalk}px 0 #8a2be2,
   ${xWalk * -1}px ${yWalk}px 0 #ad6aea,
   ${yWalk}px ${xWalk * -1}px 0 #d0aaf3,
   ${yWalk * -1}px ${xWalk}px 0 #dbbff6
   `
}

hero.addEventListener('mousemove', shadow);
