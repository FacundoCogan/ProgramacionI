Proceso VerSiAlumnosAprobaronREPETIR
	
	Definir nota1,nota2,nota3, cantAlu Como Entero
	Definir promedio Como Real
	Definir ingresaronTodos Como Caracter
	
	cantAlu=0
	
	Repetir
		Escribir "Ingrese las 3 notas del alumno"
		Leer nota1,nota2,nota3
		promedio=(nota1+nota2+nota3)/3
		Si promedio >= 4 Entonces
			Escribir "Alumno aprob�"
		SiNo
			Escribir "Alumno NO aprob�"
		FinSi
		
		cantAlu=cantAlu+1  // contar cu�ntos alumnos ingresaron
		
		Escribir "Ya ingresaron todos los alumnos? s/n"
		Leer ingresaronTodos
		
	Hasta Que ingresaronTodos="S" o ingresaronTodos="s"
	
	Escribir "Se inform� si aprobaron o no a: ", cantAlu, " alumnos"
	
FinProceso
