Proceso PromedioEdades
	
	Definir edad, cantAlu, sum Como Entero
	Definir promedio Como Real
	Definir resp Como Caracter
	cantAlu=0       //inicializo el contador
	sum=0           //inicializo el sumador
	
	Escribir "Hay alumno para ingresar al aula?"
	Leer resp
	
	Mientras (resp="s") o (resp="S") Hacer
		Escribir "Pedir que el alumno ingrese al aula"
		cantAlu=cantAlu+1      //cuento al alumno
		Escribir "Pedir que ingrese la edad"
		Leer edad
		sum=sum+edad           //sumo su edad
		Escribir "Hay otro alumno para ingresar al aula?"
		Leer resp
		
	FinMientras
	
	Si cantAlu=0 Entonces
		Escribir "No ingresó ningún alumno, no se puede calcular el promedio"
	SiNo
		promedio=sum/cantAlu
		Escribir "Ingresaron: ", cantAlu, " Alumnos"
		Escribir "El promedio de edades es: ", promedio
	FinSi
	
FinProceso
