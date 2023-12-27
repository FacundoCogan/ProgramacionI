Proceso primerParcial
	
	Definir nroPedido, cantPiezas, precioIndividual, acabado, contLocal, contDomicilio, contSucursal, masSolicitado, contMate, contSemimate, pedidoMenorImporte Como Entero
	Definir envio, tipoVenta, envioMasSolicitado Como Caracter
	Definir precio, precioAcabadoBrillante, menorImporteFinal Como Real
	Definir pri Como Logico
	
	contLocal=0
	contDomicilio=0
	contSucursal=0
	precioAcabadoBrillante=0
	contSemimate=0
	contMate=0
	pri=Verdadero
	
	Escribir "Ingrese el número de pedido (para fin de ingreso de datos ingresar 0)"
	Leer nroPedido
	
	Mientras (nroPedido<>0) Hacer
		
		Escribir "Ingrese la cantidad de piezas pedidas"
		Leer cantPiezas
		
		Escribir "Ingrese el precio de venta individual de cada pieza"
		Leer precioIndividual
		
		Escribir "Ingrese el tipo de envío solicitado para el pedido (Local - Domicilio - Sucursal)"
		Leer envio
		
		Repetir
			Escribir "Ingrese el tipo de acabado pedido en número (Brillante(1) - Semimate(2) - Mate(3))"
			Leer acabado
			
		Hasta Que (acabado=1) o (acabado=2) o (acabado=3)
		
		// 1
		precio=(cantPiezas*precioIndividual)
		
		// 1
		Si (cantPiezas>8) Entonces
			tipoVenta="Mayorista"
		SiNo
			tipoVenta="Minorista"
		FinSi
		
		
		Si (tipoVenta="Mayorista") Entonces
			precio=(precio*12/100)+precio
		FinSi
		
		envio=Minusculas(envio)
		
		Si envio=("domicilio") Entonces
			precio=precio+500
			contDomicilio=contDomicilio+1
		SiNo
			Si envio=("sucursal") Entonces
				precio=precio+300
				contSucursal=contSucursal+1
			Sino
				Si envio=("local") Entonces
					contLocal=contLocal+1
				FinSi
				
			FinSi
		FinSi
		
		// 2
		envioMasSolicitado="Domicilio"
		masSolicitado=contDomicilio
		
		Si contSucursal>masSolicitado Entonces
			masSolicitado=contSucursal
			envioMasSolicitado="Sucursal"
		FinSi
		
		Si contLocal>masSolicitado Entonces
			masSolicitado=contLocal
			envioMasSolicitado="Local"
		FinSi
		
		// 3
		Si (acabado=1) Entonces
			precioAcabadoBrillante=precioAcabadoBrillante+precio
		FinSi
		
		// 4
		Si pri=Verdadero Entonces
			menorImporteFinal=precio
			pedidoMenorImporte=nroPedido
			pri=Falso
		SiNo
			Si precio<menorImporteFinal Entonces
				menorImporteFinal=precio
				pedidoMenorImporte=nroPedido
			FinSi
			
		FinSi
		
		// 5
		Si (acabado=2) Entonces
			contSemimate=contSemimate+1
		FinSi
		
		Si (acabado=3) Entonces
			contMate=contMate+1
		FinSi
		
		Escribir "-------DATOS DEL PEDIDO-------"
		Escribir "El número de pedido es: ", nroPedido " y es: ", tipoVenta 
		Escribir "El importe final a cobrar es de: ", "$", precio  
		Escribir "------FIN DATOS DEL PEDIDO-----"
		
		Escribir "Ingrese el número de pedido (para fin de ingreso de datos ingresar 0)"
		Leer nroPedido
		
	FinMientras
	
	Escribir "El tipo de envío más solicitado: ", envioMasSolicitado        
	Escribir "El importe total cobrado en pedidos de acabado brillante: ", "$", precioAcabadoBrillante   
	Escribir "El pedido con menor importe final: ", pedidoMenorImporte, " con un total de: ", "$", menorImporteFinal        
	Escribir "Cantidad de pedidos con acabado mate: ", contMate, " y cantidad de pedidos con acabado semimate: ", contSemimate 
	
	
FinProceso
