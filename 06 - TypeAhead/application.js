const endpoint = 'https://raw.githubusercontent.com/mledoze/countries/master/countries.json';

const countries = [];

fetch(endpoint)
.then(prom => prom.json())
.then(data => countries.push(...data))

function findMatches(wordToMatch, countries) {
	return countries.filter(place => {
	   const regex = new RegExp(wordToMatch, 'gi');	
	   return place.name.common.match(regex)	
	});
}

function listHash(hash) {
  var l = [];
  for(var index in hash) {
    l.push('  ' + hash[index]);
  }
  return l;
}

function displayMatches() {
	const matchArray = findMatches(this.value, countries);
	const html = matchArray.map(place => {
	const regex = new RegExp(this.value, 'gi')
	const commonName = place.name.common.replace(regex, `<span class="hl">${this.value}</span>`)
	const languages = listHash(place.languages)
    return `
      <li>
          <span>Name: ${commonName}</span>&nbsp
          <span>Region: ${place.region}</span>&nbsp
          <span>Languages: ${languages}</span>&nbsp
      </li>
    `;
	}).join('');
	suggestions.innerHTML = html;
}

const searchInput = document.querySelector('.search');
const suggestions = document.querySelector('.suggestions');

searchInput.addEventListener('keyup', displayMatches);
searchInput.addEventListener('change', displayMatches);


