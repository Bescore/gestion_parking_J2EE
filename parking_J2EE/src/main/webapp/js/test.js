/**
 * test
 */
 //fonction qui va prendre les elements d'un formulaire et recupéré les données sous form :parametre=.....&...
 function getFormAsString(nomFormulaire){

  resultat ="";
  formElements=document.forms[nomFormulaire].elements;

  for(var i=0; i<formElements.length; i++ ){
    if (i > 0) {
      resultat+="&";
    }
    resultat+=formElements[i].name+"="+
      formElements[i].value;
 }

 return resultat;
}
  
 function submitme(){
 
var form=getFormAsString("myform")
 var http = new XMLHttpRequest();
    http.open("POST", ""+document.URL+"", true);
    http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    http.send(form);
    //lance la fonction 100ms après(permet de rafraichir la div au lieu de la page entière)
   setTimeout(function(){ $('#thisdiv').load(document.URL +' #thisdiv')},100);
   //ajouter l'alert
    $('#alert').html(`<div class="alert alert-success" role="alert">
  A simple success alert—check it out!
</div>`);
	//faire apparaître si déja présent
	$('#alert').animate({opacity:1},0);
	//retirer l'alerte
	$('#alert').animate({opacity:0},3000);
    //vide le champ
    $("#message").val("");
  console.log(document.URL +  '#thisdiv')
}