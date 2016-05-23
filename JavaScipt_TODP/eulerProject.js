var clicked1 = false;
var clicked2 = false;
var clicked3 = false;

function init() {

	var submit1 = document.getElementById("submit1");
	var p1solution = document.getElementById("p1solution");
	var textInput1 = document.getElementById("textInput1");

	var submit2 = document.getElementById("submit2");
	var p2solution = document.getElementById("p2solution");
	var textInput2 = document.getElementById("textInput2");

	var submit3 = document.getElementById("submit3");
	var p3solution = document.getElementById("p3solution");
	var textInput3 = document.getElementById("textInput3");

	submit1.onclick = function(){

		


		if(clicked1==false){
			var maxNum1 = textInput1.value;
			var solution1 = 0;
			for(var i = 0; i < maxNum1; i++){
				if(i%5==0 || i%3==0){
				solution1=solution1+i;
			}
		}
		p1solution.innerHTML = "The answer is " + solution1 + ".";
		submit1.innerHTML = "Clear";
		clicked1=true;

		} else {
			p1solution.innerHTML = "";
			textInput1.value = "";
			submit1.innerHTML = "Submit";
			clicked1 = false;
		}
	}

	submit2.onclick = function(){

		if(clicked2==false){
			var maxNum2 = textInput2.value;
			var solution2 = 0;
			var previousNumber = 1;
			var currentNumber = 2;
			var holder;

			while(currentNumber<=maxNum2){
				if(currentNumber%2==0){
					solution2+=currentNumber;
				}
				holder = previousNumber;
				previousNumber=currentNumber; 
				currentNumber+=holder;
			}

			p2solution.innerHTML = "The answer is " + solution2 + ".";
			submit2.innerHTML = "Clear";
			clicked2=true;

		} else {
			p2solution.innerHTML = "";
			textInput2.value = "";
			submit2.innerHTML = "Submit";
			clicked2 = false;
		}
	}


	submit3.onclick = function(){

		if(clicked3==false){
			var maxNum3 = textInput3.value;
			var primeArray = [];
			var numLeft = maxNum3;
			
			while(numLeft>1){
				var i = 2;
				while(numLeft%i!=0){
					i++;
				}
				numLeft/=i;
				primeArray.push(i);
			}
			var largest = primeArray[primeArray.length-1];

			p3solution.innerHTML = "The answer is " + largest + ".";
			submit3.innerHTML = "Clear";
			clicked3=true;

		} else {
			p3solution.innerHTML = "";
			textInput3.value = "";
			submit3.innerHTML = "Submit";
			clicked3 = false;
		}
	}





}

window.onload = init;