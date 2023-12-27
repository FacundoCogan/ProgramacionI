Proceso MazoCartasEj4
	Definir palo como caracter 
	Definir nroCarta como entero 
	
	Escribir "Ingresar el palo de la carta (oro/copa/basto/espada) "
	Leer palo 
	palo <- Minusculas(palo) 
	
	Si (palo="oro") Entonces
		Escribir "Ingrese número de la carta"
		Leer nroCarta 
		Si (nroCarta MOD 2) = 0 Entonces 
			Escribir "Poner la carta en pila de oros pares"
			
		Sino
			Escribir "Poner la carta en pila de oros impares"
			
		FinSi
	Sino 
		Escribir "Poner la carta en pila de restantes"
		
	Fin Si 
	
	FinProceso 