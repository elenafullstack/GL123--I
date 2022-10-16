function primero() {
    if (document.getElementById('primero').style.color =='red') {
        document.getElementById('primero').style.color = 'black';
     } else {
        document.getElementById('primero').style.color = 'red';
     }
    }

    function segundo(){
        document.getElementById("segundo").innerHTML += "Mas texto";
    }

    function tres(){
        document.getElementById("texto3").innerHTML = document.getElementById("texto3").innerHTML + " " +document.getElementById("ptexto").innerHTML;
    }

    function cuatro() {
        document.querySelector('#tercera option[value="3"]').remove();   
    }

   
    function cinco() {
        window.location.href = "https://www.youtube.com/watch?v=H5v3kku4y6Q";
    }

    function seis() {
       var texto = document.getElementById("texto3");
       var texto1= texto.outerHTML;
       alert(texto1);
    }

    function siete() {
        console.log(document.getElementById("texto7"));
    }

    function ocho() {
        if (document.getElementById("input8").checked){
            document.getElementById("ocho").innerHTML += "checked ";
        } else {
            document.getElementById("ocho").innerHTML += "not checked ";
        }
    }


    function nueve() {
        if (document.getElementById("input9").checked){
            document.getElementById("nueve").innerHTML += "checked ";
        } else {
            document.getElementById("nueve").innerHTML += "not checked ";
        }
    }

    function diez() {
       var valor = document.getElementById("textbox").value;

       var result = true;

       for (var i = 0; i < valor.length; i++) {
           var result = isNaN(valor[i]);
           if (result == false) {
               break;
           }
        }
     
        if (result == false ) {
            alert("Ingresa solamente letras por favor");
        }
    }
