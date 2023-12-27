Proceso Ej2Repetir
	
	Definir nroCarta, as, cantAs, bastosPares, cartasImpares Como Entero
	Definir palo, paloAs Como Caracter
	Definir paloBasto Como Logico
	
	as=1
	cantAs=0
	paloBasto=Falso
	bastosPares=0
	cartasImpares=0
	
	Repetir
		Escribir "Ingrese un número de carta (1-12)"
		Leer nroCarta
		
		Si nroCarta<>0 Entonces
			Escribir "Ingrese el palo de la carta (oro/espada/basto/copa)"
			Leer palo
			Si nroCarta=as entonces
				cantAs=cantAs+as
				Si (palo="basto" o palo="BASTO") Entonces
					paloAs="Apareció el as de basto"
					paloBasto=Verdadero
					
				FinSi
				
			FinSi
		FinSi
		
		Si (nroCarta MOD 2)=0 y (palo="basto" o palo="BASTO") Entonces
			bastosPares=bastosPares+1
		FinSi
		
		Si (nroCarta MOD 2)<>0 y (palo="oro" o palo="ORO") o (palo="espada" o palo="ESPADA") o (palo="copa" o palo="COPA") Entonces
			cartasImpares=cartasImpares+1
		FinSi
		
		
		
		
		
	Hasta Que (nroCarta=0)
	
	Escribir "Aparecieron: ", bastosPares, " bastos pares"
	
	Escribir "Aparecieron: ", cartasImpares, " cartas impares sin contar al basto"
	
	Si (paloBasto=Verdadero) Entonces
		Escribir paloAs
	SiNo
		Escribir "No apareció el as de basto"
	FinSi
	
FinProceso
