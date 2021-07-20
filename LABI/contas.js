/*function(calcular){
	var x = document.getElementById("op1");
	var y = document.getElementById("op2");
	var l = document.getElementById("res");

	function soma(){

	var soma1 = x.value;
	var soma2 = y.value;

	l = soma1 + soma2;
	alert(l.value);
	}
}

window.onload = calcular;
*/

var op = "+";
function operacao(elemento) {
	var elementoSeleccionado = elemento.options[elemento.selectedIndex];		
	op = elementoSeleccionado.value;
	document.getElementById("op-view").innerHTML = elementoSeleccionado.value;
	console.log("Operação: "+op);
}

function mover(elemento){
var e = document.getElementById(elemento);
e.style.position = "absolute";
e.style.top = (Math.random() * window.innerHeight)+"px";
e.style.left = (Math.random() * window.innerWidth)+"px";
}

function calcular (){
	var x = document.getElementById( "op1" );
	var y = document.getElementById( "op2" );
	var r = document.getElementById( "res" );
	var op1 = x.value;
	var op2 = y.value;

	if(op == "+"){
		r = parseFloat(op1) + parseFloat(op2);
	}
	if(op == "-"){
		r = parseFloat(op1) - parseFloat(op2);
	}

	document.getElementById("res").value = r;
}