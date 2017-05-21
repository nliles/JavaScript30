const slider = document.querySelector('.items');
let isDown = false;
let startX;
let scrollLeft;

slider.addEventListener('mousedown', (e) => {
    isDown = true;
    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
})

slider.addEventListener('mouseup', () => {
    isDown = false;    
})

slider.addEventListener('mouseleave', () => {
     isDown = false;   
})

slider.addEventListener('mousemove', (e) => {
    if (!isDown) return;
    e.preventDefault();
    const x = e.pageX - slider.offsetLeft;
    const movement = (x - startX) * 2;
    slider.scrollLeft = scrollLeft - movement;
})