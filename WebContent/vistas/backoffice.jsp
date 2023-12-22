<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="misClases.Tickets"%>
<%@page import="misClases.TicketsDAO"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
<title>Administraci�n de Tickets</title>
</head>


<body>

<div class="container">

        <br>
        <br>
		<h1 class="text-muted text-center">Panel Administrativo de Tickets</h1>
		
		<br>
        <br>
	 	<div class="row">
				<table>
					<tr>
						<th class="cabeceraTabla text-center">Id Venta</th>
						<th class="cabeceraTabla text-center">Nombre</th>
						<th class="cabeceraTabla text-center">Apellido</th>
						<th class="cabeceraTabla text-center">Mail</th>
						<th class="cabeceraTabla text-center">Cantidad</th>
						<th class="cabeceraTabla text-center">Tipo</th>
						<th class="cabeceraTabla text-center">Total</th>
						<th class="cabeceraTabla text-center">Eliminar</th>						
					</tr>
					<%
					List<Tickets> resultado=null;
					TicketsDAO ticket=new TicketsDAO();
					resultado=ticket.listarTicket();
					int totalFacturado=0;
					
					for(int x=0;x<resultado.size();x++)
					{
					String rutaE="FrontController?accion=eliminar&id="+resultado.get(x).getId();	
					String tipoTicketTexto;
					if(resultado.get(x).getTipo_ticket()==1)
					{
						tipoTicketTexto="Estudiante";
					}
					else if(resultado.get(x).getTipo_ticket()==2)
					{
						tipoTicketTexto="Trainee";
					}
					else
					{
						tipoTicketTexto="Junior";
					}					
					%>
					<tbody>
					<tr>
					  	<td class="registroTabla"><%=resultado.get(x).getId()%></td>
					  	<td class="registroTabla"><%=resultado.get(x).getNombre()%></td>
					  	<td class="registroTabla"><%=resultado.get(x).getApellido()%></td>
					  	<td class="registroTabla"><%=resultado.get(x).getMail()%></td>
					  	<td class="registroTabla"><%=resultado.get(x).getCant()%></td>
					  	<td class="registroTabla"><%=tipoTicketTexto%></td>
					  	<td class="registroTabla"><%=resultado.get(x).getTotal_facturado()%></td>
					  	<td class="registroTabla text-center"><a href=<%=rutaE%>> <i class="fa-solid fa-circle-xmark" style="color: #ec3609;"></i></a> </td>
					</tr>
					
					<%
					totalFacturado+=resultado.get(x).getTotal_facturado();
					}
					%>		
					
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td class="text-danger"><%=totalFacturado%></td>
						
					</tr>					
					</tbody>							
					
						
				</table>	 	
		</div>
</div>



        <div class="row">  <!-- Abre Row de Texto Centrado -->
            <div class="col-12 text text-center align-content-center">
                <a class="text-dark" href="FrontController?accion=volver">Volver a la P�gina Principal...</a>
            </div>
        </div>


</body>

<!-- <footer> -->
					

<!-- </footer> -->

</html>