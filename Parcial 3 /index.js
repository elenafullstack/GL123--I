let viajes = [];

function ObtenerDatos() {
    fetch('http://localhost:8080/viajes/all').
    then(resultado=> {
        resultado.json().then(json=>{
            viajes= json;
            console.log(viajes);
            MapearViajes();
        })

    });

}

function MapearViajes() {
    let contenedor=document.getElementById('viajes');

    for (let i=0; i< viajes.length; i++) {
        contenedor.innerHTML += MapearPlantilla(viajes[i]);
    }
}

function MapearPlantilla(viaje){
    return ` <section class="subclass2">
    <img src="${viaje.urlimage}"class="img2" alt="">
    <h3>${viaje.titulo}</h3>
    <h4>${viaje.descripcion}</h4>
    <center><button class="start">LEARN MORE</button></center>
</section>`
}