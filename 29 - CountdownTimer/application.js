let countdown
const timeLeft = document.querySelector('.display__time-left')
const endTime = document.querySelector('.display__end-time')
const buttons = document.querySelectorAll('[data-time]')

function timer(seconds) {

	clearInterval(countdown)

    const now = Date.now();
	const then = now + seconds * 1000;
	displayEndTime(then);

	countdown = setInterval(() => {
	 const secondsRemaining = Math.round((then - Date.now()) / 1000);

	 if(secondsRemaining < 0) {
	 	clearInterval(countdown);

	 	return;
	 }

	 displayTime(secondsRemaining)

	}, 1000);

}

function displayTime(seconds) {
	const hours = Math.floor(seconds / 3600);
	const remainderMinutes = seconds % 3600;
	const minutes = Math.floor(remainderMinutes/60);
	const remainderSeconds = seconds % 60;
	if(remainderSeconds <= 10) {
       timeLeft.style.color = "#d03e19";
            timeLeft.style.webkitTransitionDuration = "1.2s";
            timeLeft.style.opacity = 0;
            setTimeout(function () {
                timeLeft.style.webkitTransitionDuration = "0.1s";
                timeLeft.style.opacity = 1;
            }, 700);
	} 
	timeLeft.textContent = `${hours ? hours + ':' : ''}${minutes < 10 ? 0 : ''}${minutes}:${remainderSeconds < 10 ? 0 : ''}${remainderSeconds}`;
}

function displayEndTime(timestamp) {
	const end = new Date(timestamp);
	const hours = end.getHours();
	const adjustedHours = hours > 12 ? hours - 12 : hours;
	const mins = end.getMinutes();
	endTime.textContent = `Timer up at ${adjustedHours}:${mins < 10 ? 0 : ''}${mins}`;
}

function startTimer() {
	const seconds = parseInt(this.dataset.time);
	timer(seconds);
}

buttons.forEach(button => button.addEventListener('click', startTimer));
document.customForm.addEventListener('submit', function(e) {
	e.preventDefault();
	const mins = this.minutes.value;
	timer(mins * 60);
	this.reset();
})




