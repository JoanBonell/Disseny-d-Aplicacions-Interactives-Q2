/* variables */
var cicli = document.querySelector('.ciclista');
var imgbici = document.querySelector('#imgbici');

var posCiclista = 200;
var posx = 0;
var distancia = 0;
var velCiclista = 40;


/* FUNCIONS */

/*captura l'event del ratolí*/
function position(event) {
    moure(event, ".bruixola");
	posx = event.clientX;
}


/* Moure la bruixola */
function moure(evento, element) {
    var graus = 0;
    var rad = 0;
    var posxrat = evento.clientX;
    var posyrat = evento.clientY;
    var bru = document.querySelector(element);
    var pos = bru.getBoundingClientRect();

    var posxbru = pos.left + pos.width / 2;
    var posybru = pos.top + pos.height / 2;

    rad = -Math.atan((posxbru - posxrat) / (posybru - posyrat));
    if (posybru - posyrat < 0) {
        graus = rad * 180 / Math.PI;
    } else {
        graus = (rad * 180 / Math.PI) + 180;
    }
    bru.style.transform = 'rotate(' + graus + 'deg)';	
}


/* ANIMACIÓ DEL CICLISTA */

function animar() {
    distancia = posx - posCiclista;
	delta = distancia / velCiclista;
	posCiclista = posCiclista + delta;
	//cicli.style.left = posCiclista + 'px';
	imgbici.style.left = posCiclista - 32 + 'px';
	
	if (distancia > 0) 
	{
		imgbici.style.animation = 'giraDreta 0.2s linear ';
		imgbici.style.transform = 'rotateY(180deg)';
	}
	else 
	{
		imgbici.style.animation = 'giraEsquerra 0.2s linear ';
		imgbici.style.transform = 'rotateY(0deg)';
	}
    requestAnimationFrame(animar);
}
requestAnimationFrame(animar);