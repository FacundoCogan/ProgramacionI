Proceso truncar
	
	
	Definir nro1, unidad, decena, centena, udemil, aux Como entero
	
	
	Escribir "Ingrese un número de 4 cifras"
	Leer nro1
	
	aux=nro1
	
	Escribir "unidad: ", (aux MOD 10)
	
	aux= trunc(aux/10)
	
	Escribir "decena: ", (aux mod 10)
	
	aux= trunc (aux/10)
	
	Escribir "centena: ", (aux mod 10)
	
	aux= trunc(aux/10)
	
	Escribir "unidad de mil: ", (aux mod 10)
	
	aux= trunc(aux/10)
	
	
FinProceso
