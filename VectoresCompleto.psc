Proceso sin_titulo
	
	Definir a, dim, i, mayor, menor, sum, indMayor Como Entero
	Definir bandera Como Logico
	
	Escribir "Ingrese la dimensión del arreglo: "
	Leer dim
	
	Dimension a[dim]
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		a[1]=0
		
	FinPara
	
	// Mostrar el arreglo
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "a[" i "] = " a[i]
	FinPara
	
	// Llenar el arreglo con el nro 88 sin usar Para 
	i=0
	Mientras i < dim Hacer
		a[i]=0
		i=i+1
	FinMientras
	
	// Mostrar el arreglo
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "a[" i "] = " a[i]
	FinPara
	
	// Mostrar el arreglo
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "Ingrese un valor entero: "
		Leer a[i]
	FinPara
	
	Para i=0 hasta dim-1 con paso 1 Hacer
		Escribir "a[" i "] = " a[i]
	FinPara
	
	Escribir "Muestro los elementos del arreglo de contenido par"
	para i=0 hasta dim-1 con paso 1 Hacer
		Si a[i] mod 2 = 0
			Escribir "a[" i "] = " a[i]
		SiNo
			Escribir "Contenido impar"
		FinSi
		
		Escribir "Muestro los elementos del arreglo de inidice impar"
		para i=1 hasta dim-1 con paso 2 Hacer
			Escribir "a[" i "] = " a[i]
		FinPara
	FinPara
	
	mayor = a[0]
	
	Para i=1 hasta dim-1 con paso 1 Hacer
		Si a[i] > mayor Entonces
			mayor=a[i]
		FinSi
	FinPara
	
	Escribir "El mayor elemento del arreglo es: ", mayor
	
	//---------------------
	
	bandera=Verdadero
	Para i=1 hasta dim-1 con paso 1 Hacer
		Si bandera=Verdadero Entonces
			bandera=falso
			menor = a[i]
		SiNo
			Si a[i] < menor Entonces
				menor=a[i]
			FinSi
		FinSi
		Si a[i] > mayor Entonces
			mayor=a[i]
		FinSi
	FinPara
	
	Escribir "El menor elemento del arreglo es: ", menor
	
	//Sumatoria de los elementos de un arreglo
	sum=0
	Para i=1 hasta dim-1 con paso 1 Hacer
		sum=sum + a[i]
	FinPara
	
	Escribir "La sumatoria de los elementos del arreglo es: ", sum
	
	Escribir "El promedio de los elementos del arreglo es: ", sum/dim
	
	// EXTRA TIP 
	
	indMayor = 0
	
	Para i=1 hasta dim-1 con paso 1 Hacer
		Si a[i] > a[indMayor] Entonces
			indMayor=i
		FinSi
	FinPara
	
	Escribir "El mayor elemento del arreglo es: ", a[indMayor] " y es el elemento " indMayor + 1
	
FinProceso
