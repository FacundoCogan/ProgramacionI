Proceso sin_titulo
	
	// Ej1
	Definir vNum, aux, i, dim Como Entero
	Dimension vNum[15]
	
	dim=15
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "Ingrese dato:"
		Leer vNum[i]
		
	FinPara
	
	
	// Ej2
	vNum[4]=999
	
	
	// Ej3
	vNum[1]=vNum[7]
	
	
	// Ej4
	aux=vNum[3]
	vNum[3]=vNum[8]
	vNum[8]=aux
	
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "En la posición: ", i, " el valor es: ", vNum[i]
		
	FinPara
	
FinProceso
