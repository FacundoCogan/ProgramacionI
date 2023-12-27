Proceso Ejercicio3P3
	
	//DEFINIR VARIABLES
	
	Definir cantVarones, cantMujeres, canTotal, porcTotalH, porcTotalM Como Real
	
	//INGRESO DE DATOS
	
	Escribir "Ingrese la cantidad de varones"
	Leer cantVarones
	
	Escribir "Ingrese la cantidad de mujeres"
	Leer cantMujeres
	
	//CANTIDAD TOTAL DE ALUMNOS
	
	canTotal=cantVarones+cantMujeres
	
	//PORCENTAJE DE VARONES
	porcTotalH=(cantVarones*100/canTotal)
	
	//PORCENTAJE DE MUJERES
	porcTotalM=(cantMujeres*100/canTotal)
	
	//SALIDAS
	
	Escribir "La cantidad total de alumnos es: ", canTotal
	
	
	Escribir "El porcentaje total de varones es: ", porcTotalH "%"
	
	
	Escribir "El porcentaje total de mujeres es: ", porcTotalM "%"
	
	
	
	FinProceso
