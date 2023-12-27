Proceso Práctica6BVectores
	
	// 2
	Definir n, vecA, i, sum, w, multW, sumaMultW, prodPares Como Entero
	
	// 1
	Escribir "Ingrese la dimensión del vector"
	Leer n
	
	Dimension vecA[n]
	
	// 3
	Para i=0 hasta n-1 con paso 1 Hacer
		Escribir "Ingrese un valor para el vector"
		Leer vecA[i]
		
	FinPara
	
	// 4
	Para i=0 hasta n-1 con paso 1 Hacer
		Escribir "La posición: ", i, " tiene el valor de: ", vecA[i]
	FinPara
	
	// 5
	sum=0
	Para i=0 hasta n-1 con paso 1 Hacer
		sum=sum+vecA[i]
	FinPara
	Escribir "La suma de los elementos del vector es de: ", sum
	
	Escribir "-------------"
	
	// 6
	Escribir "El valor promedio de los elementos distintos de 0 (cero) del vector es de: " (sum/n)
	
	Escribir "-------------"
	
	// 7 
	Escribir "Ingrese un número"
	Leer w
	
	sumaMultW=0
	multW=0
	Para i=0 hasta n-1 con paso 1 Hacer
		Si (vecA[i] MOD w) = 0 Entonces
			sumaMultW=sumaMultW+vecA[i]
		FinSi
		
	FinPara
	
	Escribir "La suma de los múltiplos de W es: ", sumaMultW
	
	Escribir "-------------"
	
	// 8
	prodPares=1
	Para i=0 hasta n-1 con paso 2 hacer
		prodPares=prodPares*vecA[i]
	FinPara
	
	Escribir "El producto de los elementos que se encuentran en las posiciones pares del vector es: ", prodPares
	
	
FinProceso
