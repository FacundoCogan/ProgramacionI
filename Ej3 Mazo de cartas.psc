Proceso Ejercicio3MazoCartas
	
	Definir palo Como Caracter
	Definir nroCarta Como Entero
	
	Escribir "Ingrese el palo de su carta (oro/espada/copa/basto)"
	Leer palo
	
	Si Minusculas(palo)="copa" Entonces
		Escribir "Ingrese el número de su carta"
		Leer nroCarta
		Si (nroCarta MOD 2)=0 Entonces
			Escribir "Ingrese la carta en pila de copas pares"
		SiNo
			Escribir "Ingrese la carta en pila de restantes"
			
		FinSi
	Sino		
		Escribir "Ingrese la carta en pila de restantes"
	FinSi
	
FinProceso
