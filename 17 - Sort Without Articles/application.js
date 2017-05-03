const bands = ['The Plot in You', 'The Devil Wears Prada', 'Pierce the Veil', 'Norma Jean', 'The Bled', 'Say Anything', 'The Midway State', 'We Came as Romans', 'Counterparts', 'Oh, Sleeper', 'A Skylit Drive', 'Anywhere But Here', 'An Old Dog'];

function strip(bandName) {
	return bandName.replace(/^(a |the |an )/i,'').trim();
}

const sortedBands = bands.sort((a,b) => {
	return strip(a) > strip(b) ? 1 : -1;
});


document.querySelector('#bands').innerHTML = 
	sortedBands.map(band => 
	`<li><input type="checkbox"><span class="labels">${band}</span></input></li>`)
	.join('');

const checkboxes = document.querySelectorAll('input[type=checkbox]');
let lastCheck;

function handleClick(e) {
  let inBetween = false;
  if (e.shiftKey && this.checked) {
    checkboxes.forEach(checkbox => {
      if (checkbox === this || checkbox === lastCheck) {
        inBetween = !inBetween;
      }
      if (inBetween) {
        checkbox.checked = true;
      }
    })

  }

  lastCheck = this;
}

checkboxes.forEach(checkbox => checkbox.addEventListener('click', handleClick));
