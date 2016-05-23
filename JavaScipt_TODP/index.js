

/%

window.onload = init;

funciton init() {
	var submit1 = document.getElementbyID("submit1");
	var solution1 = document.getElementbyID("solution1")
	submit1.onclick = submit1handler;
}

function submit1handler {
	var maxNumber = document.getElementById("maxNum").value;
	
	var solution = 0;
	for(var i =0; i<maxNumber; i++) {

		if(i%3==0||i%5==0) {
			solution += i
		}
	}
	
    document.getElementById("p1solution").innerHTML = maxNumber;
}
%/




