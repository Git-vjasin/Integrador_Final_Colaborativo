var valorTicket;
var monto=0;

document.getElemdentById("categoria").value="Estudiante";
valorTicket=200*0.2;

function cargaDctoEstudiante()
{

  document.getElementById("categoria").value="1";
  valorTicket=200*0.2;
}

function cargaDctoTrainee()
{

  document.getElementById("categoria").value="2";
  valorTicket=200*0.5;
}

function cargaDctoJunior()
{

  document.getElementById("categoria").value="3";
  valorTicket=200*0.85;
}

function seleccionar()
{
    switch (document.getElementById("categoria").value)
    {
        case "1":
            valorTicket=(200*0.20);
        break;

        case "2":
            valorTicket=(200*0.50);
        break;

        case "3":
            valorTicket=(200*0.85);
        break;

        default:
        break;
    }

}

function calcularImporte()
{
	    
  if (document.getElementById("nombre").value != "" && document.getElementById("apellido").value != "" && document.getElementById("correo").value != "" && document.getElementById("cantidad").value != "")
  {
    monto=(parseInt(document.getElementById("cantidad").value)*valorTicket);
    document.getElementById("total_facturado").value=monto;
  }
  
  else
  { 
    alert("Todos los Datos son Obligatorios !!!");
  }
}

function borrarContenido()
{
  document.getElementById("nombre").value="";
  document.getElementById("apellido").value="";
  document.getElementById("correo").value="";
  document.getElementById("cantidad").value="";
  document.getElementById("total_facturado").value="";
}

// Color del Menu con MouseOver
function textoSeleccionado()
{

}