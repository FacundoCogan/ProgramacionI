Proceso Ej1Práctica4
	
	Definir nota1, nota2, nota3, promedio Como Real
	Definir recup1, notaFinal1, recup2, notaFinal2, recup3, notaFinal3 Como Entero
	
	// Ingreso de datos nota 1
	
	Escribir "Ingrese la nota del primer parcial"
	Leer nota1
	
	Si nota1 < 4 Entonces
		Escribir "Ingrese la nota del recuperatorio número 1"
		Leer recup1
		notaFinal1=recup1
	sino 
		notaFinal1=nota1
	FinSi
	
	// Ingreso de datos nota 2
	
	Escribir "Ingrese la nota del segundo parcial"
	Leer nota2
	Si nota2 < 4 Entonces
		Escribir "Ingrese la nota del recuperatorio"
		Leer recup2
		notaFinal=recup2
	sino
		notaFinal2=nota2
	FinSi
	
	// Ingreso de datos nota 3
	
	Escribir "Ingrese la nota del tercer parcial"
	Leer nota3
	Si nota3 < 4 Entonces
		Escribir "Ingrese la nota del tercer recuperatorio"
		Leer recup3
		notaFinal3=recup3
	sino 
		notaFinal3=nota3
	FinSi
	
	
	// Proceso
	
	Si (notaFinal1>= 4  && notaFinal2  >= 4 && notaFinal3 >= 4) Entonces
		Escribir "El alumno aprobó"
	SiNo
		Escribir "El alumno desaprobó"
	FinSi
	
FinProceso


