Proceso EjercicioConNúmeros
	//declaración de variables
	Definir a, b, aux Como Entero
	
	Escribir "Ingrese el valor del número A: "
	Leer a 
	Escribir "Ingrese el valor del número B: "
	Leer b

	//swap - intercambio de valores
	aux=a
	a=b
	b=aux
	
	
	Escribir "El valor de A luego del intercambio es: ", a
	Escribir "El valor de A luego del intercambio es: ", b
	
	aux=a+b
	Escribir "A + B = ", aux 
	
	Escribir "A - B = ", a-b
	
FinProceso
