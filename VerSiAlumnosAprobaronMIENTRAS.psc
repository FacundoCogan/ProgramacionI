Proceso VerSiAlumnosAprobaronMIENTRAS
	
	Definir nota1, nota2, nota3 Como Entero
	Definir promedio Como Real
	Definir hayaAlumnos Como Caracter
	
	Escribir "Hay alumno o alumnos? s/n"
	Leer hayaAlumnos
	
	Mientras (hayaAlumnos="s") o (hayaAlumnos="S") Hacer 
	
	Escribir "Ingrese las 3 notas del alumno"
	Leer nota1, nota2, nota3
	
	promedio=(nota1 + nota2 + nota3) /3
	
	Si promedio >=4 Entonces
		Escribir "Alumno aprob�"
	SiNo
		Escribir "Alumno NO aprob�"
	FinSi
	
	Escribir "Hay a�n alumno o alumnos? s/n"
	Leer hayaAlumnos
	
FinMientras

	
FinProceso
