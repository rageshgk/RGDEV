({
	performInit : function(component, event, helper) {
		var c = document.querySelector('.myCanvas');
		var cx = c.getContext('2d');
		var mousedown = false;
function setupCanvas() {
  c.height = 480;
  c.width = 900;
  cx.lineWidth = 15;
  cx.lineCap = 'round';
  cx.strokeStyle = '#d3d3d3';
}
function onmousedown(ev) {
  mousedown = true;
  ev.preventDefault();
}
function onmouseup(ev) {
  mousedown = false;
  ev.preventDefault();
}
function onmousemove(ev) {
  var x = ev.clientX;
  var y = ev.clientY;
  if (mousedown) {
    paint(x, y);
  }
}
function paint(x, y) {
  cx.beginPath();
  cx.moveTo(x, y);
  cx.lineTo(x, y);
  cx.stroke();
  cx.closePath();
}
c.addEventListener('mousedown', onmousedown, false);
c.addEventListener('mouseup', onmouseup, false);
c.addEventListener('mousemove', onmousemove, false);
setupCanvas();
	},
    
    clearCanvas : function ( component) {
        var c = document.querySelector('.myCanvas');
		var cx = c.getContext('2d');
        cx.clearRect(0, 0, c.width, c.height);
        cx.beginPath();       
    }
})