//////////////////////////////////GO TO TOP BUTTON///////////////////////////
/////////////////////////////////////////////////////////////////////////////
mybutton = document.getElementById("myBtn");
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
/////////////////////////////////////////////////////////////////////////////

 document.getElementById ("imagemmercedes").addEventListener ("click", myFunction, true);
function myFunction() {
   document.getElementById("mercedes").style.display="block";
 }

document.getElementById ("fechar1").addEventListener ("click", fechar1, true);
function fechar1() {
   document.getElementById("mercedes").style.display="none";
 }

 document.getElementById ("imagemferrari").addEventListener ("click", myFunction1, true);
function myFunction1() {
   document.getElementById("ferrari").style.display="block";
 }

document.getElementById ("fechar2").addEventListener ("click", fechar2, true);
function fechar2() {
   document.getElementById("ferrari").style.display="none";
 }

  document.getElementById ("imagemredbull").addEventListener ("click", myFunction2, true);
function myFunction2() {
   document.getElementById("redbull").style.display="block";
 }

document.getElementById ("fechar3").addEventListener ("click", fechar3, true);
function fechar3() {
   document.getElementById("redbull").style.display="none";
 }

   document.getElementById ("imagemmclaren").addEventListener ("click", myFunction3, true);
function myFunction3() {
   document.getElementById("mclaren").style.display="block";
 }

document.getElementById ("fechar4").addEventListener ("click", fechar4, true);
function fechar4() {
   document.getElementById("mclaren").style.display="none";
 }

    document.getElementById ("imagemrenault").addEventListener ("click", myFunction4, true);
function myFunction4() {
   document.getElementById("renault").style.display="block";
 }

document.getElementById ("fechar5").addEventListener ("click", fechar5, true);
function fechar5() {
   document.getElementById("renault").style.display="none";
 }
   document.getElementById ("imagemtororosso").addEventListener ("click", myFunction5, true);
function myFunction5() {
   document.getElementById("tororosso").style.display="block";
 }

document.getElementById ("fechar6").addEventListener ("click", fechar6, true);
function fechar6() {
   document.getElementById("tororosso").style.display="none";
 }

   document.getElementById ("imagemracingpoint").addEventListener ("click", myFunction6, true);
function myFunction6() {
   document.getElementById("racingpoint").style.display="block";
 }

document.getElementById ("fechar7").addEventListener ("click", fechar7, true);
function fechar7() {
   document.getElementById("racingpoint").style.display="none";
 }

   document.getElementById ("imagemalfaromeo").addEventListener ("click", myFunction7, true);
function myFunction7() {
   document.getElementById("alfaromeo").style.display="block";
 }

document.getElementById ("fechar8").addEventListener ("click", fechar8, true);
function fechar8() {
   document.getElementById("alfaromeo").style.display="none";
 }

    document.getElementById ("imagemhaas").addEventListener ("click", myFunction8, true);
function myFunction8() {
   document.getElementById("haas").style.display="block";
 }

document.getElementById ("fechar9").addEventListener ("click", fechar9, true);
function fechar9() {
   document.getElementById("haas").style.display="none";
 }

    document.getElementById ("imagemwilliams").addEventListener ("click", myFunction9, true);
function myFunction9() {
   document.getElementById("williams").style.display="block";
 }

document.getElementById ("fechar10").addEventListener ("click", fechar10, true);
function fechar10() {
   document.getElementById("williams").style.display="none";
 }

//////////////////////////////DROPDOW CURSIOSIDADES//////////////////////////
/////////////////////////////////////////////////////////////////////////////
