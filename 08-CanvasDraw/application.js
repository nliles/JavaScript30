document.addEventListener("DOMContentLoaded", function() {

const canvas = document.querySelector('#draw');
const ctx = canvas.getContext('2d');

canvas.width = 950;
canvas.height = 550;
ctx.lineWidth = 10;
ctx.lineCap = 'round;'

let isDrawing = false;
let lastX = 0;
let lastY = 0;

function draw(e) {
  if(!isDrawing) return;
  ctx.strokeStyle = document.getElementById('color').value;
  ctx.lineWidth = document.getElementById('size').value;
  var s = document.getElementById("shape");
    var t = s.options[s.selectedIndex].text;
    ctx.lineCap = `${t}`;
  ctx.beginPath();
  ctx.moveTo(lastX, lastY);
  ctx.lineTo(e.offsetX, e.offsetY);
  ctx.stroke();
  [lastX, lastY] = [e.offsetX, e.offsetY]
}

canvas.addEventListener('mousemove', draw);
canvas.addEventListener('mousedown', (e) => {
  isDrawing = true;
    [lastX, lastY] = [e.offsetX, e.offsetY];
});

canvas.addEventListener('mouseup', () => isDrawing = false);
canvas.addEventListener('mouseout', () => isDrawing = false);


});