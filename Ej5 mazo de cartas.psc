Proceso Ej5MazoCartas
	
	Definir palo Como Caracter
	Definir nroCarta Como Entero
	
	Escribir "Ingrese el palo de la carta (oro/espada/basto/copa)"
	Leer palo
	
	Si Minusculas(palo)="oro" o Minusculas(palo)="copa" Entonces
		Escribir "Ingrese el número de su carta"
		Leer nroCarta
		Si (nroCarta MOD 2)=0 Entonces
			Escribir "Ingrese la carta en la pila de oros y copas pares"
		SiNo
			Escribir "Ingrese la carta en la pila de números impares"
		FinSi
	FinSi	
	
	Si Minusculas(palo)="espada" o Minusculas(palo)="basto" Entonces
		Escribir "Ingrese el número de su carta"
		Leer nroCarta 
		Si (nroCarta MOD 2)=0 Entonces
			Escribir "Ingrese la carta en la pila de bastos y espadas pares"
		SiNo
			Escribir "Ingrese la carta en la pila de números impares"
		FinSi
	FinSi	
	
	
FinProceso
