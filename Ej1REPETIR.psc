Proceso Ej1Repetir
	
	Definir nroCarta, as, cantAs Como Entero
	Definir palo, paloAs Como Caracter
	Definir paloCopa Como Logico
	
	as=1
	cantAs=0
	paloCopa=Falso
	
	Repetir
		Escribir "Ingrese un número de carta (1-12)"
		Leer nroCarta
		
		Si nroCarta<>0 Entonces
			Escribir "Ingrese el palo de la carta (oro/espada/basto/copa)"
			Leer palo
			Si nroCarta=as entonces
				cantAs=cantAs+as
				Si (palo="copa" o palo="COPA") Entonces
					paloAs="Apareció el as de copa"
					paloCopa=Verdadero
				FinSi
				
			FinSi
		FinSi
		
		
		
	Hasta Que (nroCarta=0)
	
	Escribir "Aparecieron: ", cantAs, " ases"
	
	Si paloCopa=Verdadero
		Escribir paloAs
	SiNo
		Escribir "No apareció es as de copas"
	FinSi
	
	
	
FinProceso
