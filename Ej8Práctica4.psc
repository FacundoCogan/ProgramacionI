//Una fábrica trabaja dos turnos: diurno y nocturno. 
//De un empleado se conoce: número de legajo, apellido/nombre, sección, turno, horas trabajadas y día de la semana. Se desea calcular su sueldo de un día de trabajo, de acuerdo a los siguientes valores :
//		
//		- la tarifa de las horas diurnas es de $ 5.
//		- la tarifa de las horas nocturnas es de $ 8.
//		- En caso de ser Sábado o Domingo, la tarifa se incrementa en $2 para el turno diurno y en $ 3 para el turno nocturno.
//

Proceso Ej8Práctica14
	
	//Defino las variables
	
	Definir legajo, horasTrabajadas, dia, tarifaDiurnas, tarifaNocturnas, incrementoDiurno, incrementoNocturno, sueldo como entero
	Definir nombre, seccion, turno Como Caracter
	
	// Entrada de datos
	
	Escribir "Ingrese el número de legajo"
	Leer legajo
	
	Escribir "Ingrese su nombre y apellido"
	Leer nombre
	
	Escribir "Ingrese su sección"
	Leer seccion
	
	Escribir "Ingrese el turno de trabajo (diurno o nocturno)"
	Leer turno
	
	Escribir "Ingrese las horas trabajadas en el día de hoy"
	Leer horasTrabajadas
	
	Escribir "Ingrese el día de la semana en forma de número: Lunes(0), Martes(1), Miércoles(2), Jueves(3), Viernes(4), Sábado(5), Domingo(6)"
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
	Escribir "Su sueldo por el día trabajado de hoy es de: ", "$" sueldo 
	
FinProceso
