function getTime(offset) {
  const time = new Date();
  const utc = (time.getTimezoneOffset() * 60000) + time.getTime();
  const city = utc + (3600000 * offset);
  return new Date(city);
}

function setDate(name, offset) {
  const secondHand = document.querySelector('.second' + '.' + name);
  const minuteHand = document.querySelector('.minute' + '.' + name);
  const hourHand = document.querySelector('.hour' + '.' + name);

  const now = getTime(offset);

  const seconds = now.getSeconds();
  const secondsDegrees = ((seconds/60) * 360) + 90;
  secondHand.style.transform = `rotate(${secondsDegrees}deg)`;

  const minutes = now.getMinutes();
  const minDegrees = ((minutes/60) * 360) + ((seconds/60)*6) + 90;
  minuteHand.style.transform = `rotate(${minDegrees}deg)`;

  const hour = now.getHours();
  const hourDegrees = ((hour/12) * 360) + ((minutes/60)*30) + 90;
  hourHand.style.transform = `rotate(${hourDegrees}deg)`;
}

setInterval( function() { setDate("one", -5); }, 1000 );
setInterval( function() { setDate("two", -8); }, 1000 );
setInterval( function() { setDate("three", 5.5); }, 1000 );
setInterval( function() { setDate("four", 8); }, 1000 );