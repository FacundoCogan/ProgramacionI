Proceso Ejercico2MazoCartas
	
	Definir palo Como Caracter
	Definir nroCarta Como Entero
	
	Escribir "Ingrese el número de la carta"
	Leer nroCarta
	
	Si nroCarta=1 Entonces
		Escribir "Ingrese la carta en la pila de ases"
	Sino 
		Escribir "Ingrese el palo de la carta (oro/espada/basto/copa)"
		Leer palo 
		Si Minusculas(palo)="oro" Entonces
			Escribir "Ingrese la carta en pila de oros"
		SiNo
			si Minusculas(palo)="espada" Entonces
				Escribir "Ingrese la carta en pila de espadas"
			SiNo
				Si Minusculas(palo)="basto"
					Escribir "Ingrese la carta en pila de bastos"
				Sino 
					Escribir "Ingrese la carta en pila de copas"
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
