Proceso Práctica6AVectores
	
	// A
	Definir vA, dim, i, z, max, cont, posMax, vC, a, b, indImpar, indPar Como Entero
	Dimension vA[7], vC[7] // G
	
	dim=7
	
	// B
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "Ingrese un valor"
		Leer vA[i]
		
	FinPara
	
	// C
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "La posición: ", i, " tiene el valor de: ", vA[i]
	FinPara
	
	// D
	cont=0
	Escribir "Ingrese el número que quiere buscar dentro del vector"
	Leer z
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		Si vA[i]=z Entonces
			cont=cont+1
		FinSi
		
	FinPara
	
	Si (cont>0) Entonces
		Escribir "El número ", z, " apareció ", cont, " vez/veces"
	SiNo
		Escribir "No apareció el número ", z
	FinSi
	
	// E y F
	max=vA[0]
	posMax=0
	
	Para i=1 hasta dim-1 con paso 1 Hacer
		Si vA[i] > max Entonces
			max = vA[i]
			posMax = i
		FinSi
		
	FinPara
	
	
	Escribir "En la posición " posMax, " el máximo valor del vector es: ", max
	
	// H
	Para i=0 hasta dim-1 con paso 1 Hacer
		vC[i]=0
	FinPara
	
	// I
	Escribir "--------------"
	
	Escribir "VECTOR C: "
	Para i=6 hasta 0 con paso -1 hacer
		vC[i]=vA[i]
		Escribir "La posición: ", i, " tiene el valor de: ", vC[i]
	FinPara
	
	Escribir "--------------"
	
	Escribir "VECTOR A: "
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "La posición: ", i, " tiene el valor de: ", vA[i]
	FinPara
	
	Escribir "--------------"
	
	// J 
	Escribir "Ingrese un número:"
	Leer b
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		vA[i]=b
		Escribir "La posición: ", i, " tiene el valor de: ", vA[i]
	FinPara
	
	Escribir "--------------"
	
	// K 
	Para i=0 hasta dim-1 con paso 1 hacer
		Si (i MOD 2) <> 0 Entonces
			indImpar=i
			vA[indImpar]=0
		FinSi
		Escribir "La posición: ", i, " tiene el valor de: ", vA[i]
	FinPara
	
	Escribir "--------------"
	
	// I
	Para i=0 hasta dim-1 con paso 1 Hacer
		Si (i MOD 2) = 0 Entonces
			indPar=i
			vC[indPar]=1
		SiNo
			indImpar=i
			vC[indImpar]=2
		FinSi
		Escribir "La posición: ", i, " tiene el valor de: ", vC[i]
	FinPara
	
	
FinProceso
