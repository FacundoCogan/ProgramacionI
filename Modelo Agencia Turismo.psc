Proceso ModeloAgenciaTurismo
	
	Definir nroReserva, reservasProxA�os, auxReservas, menorCantDias, mayorCantDias, nroReservaAux, nroReservaAnterior, cantMayorAPersona, cantIgualAPersona, sumaPension, nroReservaPrimero, categoria, cantDias, cantPersonas, precio, cantReservas, cantReserDias, mayorReserva, contCatUno, contCatDos, contCatTres, contCatCuatro, contCatCinco, menorReserva, reservaMayorCantDias, reservaMenorCantDias, sumaCatUno, sumaCatDos, sumaCatTres, sumaCatCuatro, sumaCatCinco, contPensionD, contPensionMedia, contPensionPC, contPensionA Como Entero
	Definir apeNombre, nombrePrimero, hotel, tipoPension, dato, mayorCantReserva, menorCantReserva, reservaMasDeUnaPersona Como Caracter
	Definir cotDolar Como Real
	Definir primero, primeroApeNombre, pri, esOrdenado Como Logico
	
	cantReservas=0
	cantReserDias=0
	contCatUno=0
	contCatDos=0
	contCatTres=0
	contCatCuatro=0
	contCatCinco=0
	sumaCatUno=0
	sumaCatDos=0
	sumaCatTres=0
	sumaCatCuatro=0
	sumaCatCinco=0
	contPensionD=0
	contPensionMedia=0
	contPensionPC=0
	contPensionA=0
	sumaPension=0
	cantMayorAPersona=0
	cantIgualAPersona=0
	nroReservaAnterior=0
	
	
	
	esOrdenado=Verdadero
	primero=Verdadero
	primeroApeNombre=Verdadero
	pri=Verdadero
	
	Escribir "�Hay datos para cargar? (s/n)"
	Leer dato
	
	Mientras (dato="s") o (dato="S") Hacer
		
		
		Escribir "Ingrese el n�mero de reserva"
		Leer nroReserva
		//			nroReservaAux=nroReserva
		//			Si esOrdenado=Verdadero Entonces
		//				Si (nroReserva>nroReservaAnterior) y (nroReservaAnterior=nroReserva-1) o (nroReservaAux=nroReserva) Entonces
		//					esOrdenado=Verdadero
		//					nroReservaAnterior=nroReserva
		//					nroReservaAux=0
		//				SiNo
		//					esOrdenado=Falso
		//					
		//				FinSi
		//				
		//			FinSi
		
		Escribir "Ingrese apellido y nombre del titular de la reserva"
		Leer apeNombre
		
		
		
		// 6 
		
		Si primero=Verdadero Entonces
			nombrePrimero=apeNombre
			nroReservaPrimero=nroReserva
			primero=Falso
		FinSi
		
		Escribir "Ingrese el nombre del hotel"
		Leer hotel
		
		Repetir
			Escribir "Ingrese la categor�a del hotel (1, 2, 3, 4, 5)"
			Leer categoria
			
		Hasta Que (categoria>=1) y (categoria<=5)
		
		Repetir
			Escribir "Ingrese la cantidad de d�as"
			Leer cantDias
			
		Hasta Que (cantDias>0)
		
		Repetir
			Escribir "Ingrese la cantidad de personas (no debe superar las 8 personas)"
			Leer cantPersonas
			Si cantPersonas >1 Entonces
				cantMayorAPersona=cantMayorAPersona+1
			SiNo
				cantIgualAPersona=cantIgualAPersona+1
				
			FinSi
			
			
		Hasta Que (cantPersonas>0) y (cantPersonas<=8)
		
		Repetir
			Escribir "Ingrese el tipo de pensi�n elegido (D - 1/2 - PC - A)"
			Leer tipoPension
			
		Hasta Que (tipoPension="D") o (tipoPension="1/2") o (tipoPension="PC") o (tipoPension="A")
		
		Escribir "Ingrese la cotizaci�n del d�lar"
		Leer cotDolar
		
		Si categoria=1 Entonces
			precio=800
			contCatUno=contCatUno+1
		FinSi
		
		Si categoria=2 Entonces
			precio=1500
			contCatDos=contCatDos+1
		FinSi
		
		Si categoria=3 Entonces
			precio=2200
			contCatTres=contCatTres+1
		FinSi
		
		Si categoria=4 Entonces
			precio=3000
			contCatCuatro=contCatCuatro+1
		FinSi
		
		Si categoria=5 Entonces
			precio=3700
			contCatCinco=contCatCinco+1
		FinSi
		
		precio=precio*cantDias*cantPersonas
		
		Si tipoPension="D" Entonces
			precio=precio
		SiNo
			Si tipoPension="1/2" Entonces
				precio=precio+(precio*30/100)
			SiNo
				Si tipoPension="PC" Entonces
					precio=precio+(precio*50/100)
				SiNo
					precio=precio+(precio*80/100)
				FinSi
			FinSi
		FinSi
		
		
		Si (cantDias>15) y (categoria=3 o categoria=4) Entonces
			precio=precio-(precio*10/100)
		FinSi
		
		cantReservas=cantReservas+1
		
		Si (cantDias>10) y (cantPersonas=8) Entonces
			cantReserDias=cantReserDias+1
		FinSi
		
		mayorReserva=contCatUno
		mayorCantReserva="1"
		
		Si contCatDos>mayorReserva Entonces
			mayorReserva=contCatDos
			mayorCantReserva="2"
		FinSi
		
		Si contCatTres>mayorReserva Entonces
			mayorReserva=contCatTres
			mayorCantReserva="3"
		FinSi
		
		Si contCatCuatro>mayorReserva Entonces
			mayorReserva=contCatCuatro
			mayorCantReserva="4"
		FinSi
		
		Si contCatCinco>mayorReserva Entonces
			mayorReserva=contCatCinco
			mayorCantReserva="5"
		FinSi
		
		menorReserva=contCatUno
		menorCantReserva="1"
		
		Si contCatDos<menorReserva Entonces
			menorReserva=contCatDos
			menorCantReserva="2"
		FinSi
		
		Si contCatTres<menorReserva Entonces
			menorReserva=contCatTres
			menorCantReserva="3"
		FinSi
		
		Si contCatCuatro<menorReserva Entonces
			menorReserva=contCatCuatro
			menorCantReserva="4"
		FinSi
		
		Si contCatCinco<menorReserva Entonces
			menorReserva=contCatCinco
			menorCantReserva="5"
		FinSi
		
		Si pri Entonces
			menorCantDias=cantDias
			reservaMenorCantDias=nroReserva
			mayorCantDias=cantDias
			reservaMayorCantDias=nroReserva
			pri=Falso
		Sino
			Si cantDias>mayorCantDias Entonces
				mayorCantDias=cantDias
				reservaMayorCantDias=nroReserva
			Sino
				Si cantDias<menorCantDias Entonces
					menorCantDias=cantDias
					reservaMenorCantDias=nroReserva
				Fin Si
			Fin Si
		Fin Si
		
		// 9)	Importe recaudado por cada categor�a de hotel.
		
		Si (categoria=1) Entonces
			sumaCatUno=sumaCatUno+precio
		FinSi
		
		Si (categoria=2) Entonces
			sumaCatDos=sumaCatDos+precio
		FinSi
		
		Si (categoria=3) Entonces
			sumaCatTres=sumaCatTres+precio
		FinSi
		
		Si (categoria=4) Entonces
			sumaCatCuatro=sumaCatCuatro+precio
		FinSi
		
		Si (categoria=5) Entonces
			sumaCatCinco=sumaCatCinco+precio
		FinSi
		
		// 11)	 Porcentaje de reservas realizadas por cada tipo de pensi�n.
		
		Si (tipoPension="D") Entonces
			contPensionD=contPensionD+1
		FinSi
		
		Si (tipoPension="1/2") Entonces
			contPensionMedia=contPensionMedia+1
		FinSi
		
		Si (tipoPension="PC") Entonces
			contPensionPC=contPensionPC+1
		FinSi
		
		Si (tipoPension="A") Entonces
			contPensionA=contPensionA+1
		FinSi
		
		sumaPension=sumaPension+contPensionD+contPensionMedia+contPensionPC+contPensionA
		
		
		
		Escribir "----------DATOS DE LA RESERVA-----------"
		Escribir "El n�mero de Reserva es: ", nroReserva
		Escribir "El apellido y nombre del titular es: ", apeNombre
		Escribir "El nombre del hotel es: ", hotel
		Escribir "La categor�a del hotel es: ", categoria
		Escribir "La cantidad de d�a que se queda es: ", cantDias
		Escribir "La cantidad de personas que reservaron: ", cantPersonas
		Escribir "El tipo de pensi�n elegido es: ", tipoPension
		Escribir "La cotizaci�n del d�lar es de: ", "$", cotDolar
		Escribir "El importe total en pesos es de: ", "$", precio
		Escribir "El importe total en d�lares es de: ", "USD", (precio/cotDolar)
		
		
		Escribir "�Hay datos para cargar? (s/n)"
		Leer dato
		
		
		
		
	FinMientras
	
	Escribir "La cantidad de reservas totales registradas es de: ", cantReservas
	Escribir "La cantidad de reservas que se realizaron con m�s de 10 d�as para 8 personas es de: ", cantReserDias
	Escribir "La categor�a del hotel de la cual hay mayor cantidad de reservas es de: ", mayorCantReserva
	Escribir "La categor�a del hotel de la cual hay menor cantidad de reservas es de: ", menorCantReserva
	Escribir "Primer n�mero de reserva ingresado: ", nroReservaPrimero, " del cliente: ", nombrePrimero
	Escribir "N�mero de reserva de la que se reserv� menor cantidad de d�as: ", reservaMenorCantDias
	Escribir "N�mero de reserva de la que se reserv� mayor cantidad de d�as: ", reservaMayorCantDias
	Escribir "Importe recaudado por cada categor�a de hotel: "
	Escribir "Categor�a 1: ", "$", sumaCatUno
	Escribir "Categor�a 2: ", "$", sumaCatDos
	Escribir "Categor�a 3: ", "$", sumaCatTres
	Escribir "Categor�a 4: ", "$", sumaCatCuatro
	Escribir "Categor�a 5: ", "$", sumaCatCinco
	Escribir "Cantidad de d�as promedios entre todas las reservas: ", (cantDias/cantReservas)
	Escribir "Porcentaje de reservas realizadas por cada tipo de pensi�n: "
	Escribir "El porcentaje de la pensi�n D es: ", (sumaPension/100)*contPensionD, "%"
	Escribir "El porcentaje de la pensi�n 1/2 es: ", (sumaPension/100)*contPensionMedia, "%"
	Escribir "El porcentaje de la pensi�n PC es: ", (sumaPension/100)*contPensionPC, "%"
	Escribir "El porcentaje de la pensi�n A es: ", (sumaPension/100)*contPensionA, "%"
	
	// �Todas las reservas fueron para m�s de una persona?
	
	Si cantMayorAPersona = (cantMayorAPersona+cantIgualAPersona) Entonces
		Escribir "Todas las reservas fueron para m�s de una persona"
	SiNo
		Escribir "No todas las reservas fueron para m�s de una persona"
	FinSi
	
//	Si esOrdenado=Verdadero Entonces
//		Escribir "Todos los n�meros de reservas ingresados fueron realizados en forma ordenada ascendentemente"
//	SiNo
//		Escribir "NO todos los n�meros de reservas ingresados fueron realizados en forma ordenada ascendentemente"
//	FinSi
	
	
	
FinProceso
