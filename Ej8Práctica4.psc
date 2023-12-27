//Una f�brica trabaja dos turnos: diurno y nocturno. 
//De un empleado se conoce: n�mero de legajo, apellido/nombre, secci�n, turno, horas trabajadas y d�a de la semana. Se desea calcular su sueldo de un d�a de trabajo, de acuerdo a los siguientes valores :
//		
//		- la tarifa de las horas diurnas es de $ 5.
//		- la tarifa de las horas nocturnas es de $ 8.
//		- En caso de ser S�bado o Domingo, la tarifa se incrementa en $2 para el turno diurno y en $ 3 para el turno nocturno.
//

Proceso Ej8Pr�ctica14
	
	//Defino las variables
	
	Definir legajo, horasTrabajadas, dia, tarifaDiurnas, tarifaNocturnas, incrementoDiurno, incrementoNocturno, sueldo como entero
	Definir nombre, seccion, turno Como Caracter
	
	// Entrada de datos
	
	Escribir "Ingrese el n�mero de legajo"
	Leer legajo
	
	Escribir "Ingrese su nombre y apellido"
	Leer nombre
	
	Escribir "Ingrese su secci�n"
	Leer seccion
	
	Escribir "Ingrese el turno de trabajo (diurno o nocturno)"
	Leer turno
	
	Escribir "Ingrese las horas trabajadas en el d�a de hoy"
	Leer horasTrabajadas
	
	Escribir "Ingrese el d�a de la semana en forma de n�mero: Lunes(0), Martes(1), Mi�rcoles(2), Jueves(3), Viernes(4), S�bado(5), Domingo(6)"
	Leer dia
	
	// Proceso 
	
	tarifaDiurnas=5
	tarifaNocturnas=8
	
	incrementoDiurno=7
	incrementoNocturno=11
	
	Si (dia < 5) Entonces
		Si (turno="diurno") entonces
			sueldo=horasTrabajadas*tarifaDiurnas
		Sino 
			sueldo=horasTrabajadas*tarifaNocturnas
			
		FinSi
	Sino	
		Si (turno="diurno") entonces
			sueldo=horasTrabajadas*incrementoDiurno
		SiNo
			sueldo=horasTrabajadas*incrementoNocturno
			
		FinSi
	FinSi
	
	// Salida
	Escribir "Su sueldo por el d�a trabajado de hoy es de: ", "$" sueldo 
	
FinProceso
