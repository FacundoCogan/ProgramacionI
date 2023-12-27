Proceso Ej9Práctica4
	
	// Defino variables
	
	Definir nroCorredor, tiempo1, tiempo2, tiempo3, tiempo4, tiempo5, tiempoTotal, tiempoPenalizado Como Entero
	Definir nombre Como Caracter
	
	// Entrada de datos
	
	Escribir "Ingrese el número del corredor"
	Leer nroCorredor
	
	Escribir "Ingrese el nombre del corredor"
	Leer nombre
	
	Escribir "Escribir el tiempo en minutos utilizado en la etapa 1"
	Leer tiempo1
	
	Escribir "Escribir el tiempo en minutos utilizado en la etapa 2"
	Leer tiempo2
	
	Escribir "Escribir el tiempo en minutos utilizado en la etapa 3"
	Leer tiempo3
	
	Escribir "Escribir el tiempo en minutos utilizado en la etapa 4"
	Leer tiempo4
	
	Escribir "Escribir el tiempo en minutos utilizado en la etapa 5"
	Leer tiempo5
	
	// Proceso
	
	tiempoTotal=(tiempo1+tiempo2+tiempo3+tiempo4+tiempo5)
	tiempoPenalizado=280
	
	Si tiempo1=0 Entonces
		tiempo1=tiempoPenalizado
	FinSi
	
	Si tiempo2=0 Entonces
		tiempo2=tiempoPenalizado
	FinSi
	
	Si tiempo3=0 Entonces
		tiempo3=tiempoPenalizado
	FinSi
	
	Si tiempo4=0 Entonces
		tiempo4=tiempoPenalizado
	FinSi
	
	Si tiempo5=0 Entonces
		tiempo5=tiempoPenalizado
	FinSi
	
	Si tiempoTotal=0 Entonces
		tiempoTotal=1680
	FinSi
	
	// Actualizo valores
	
	tiempoTotal=(tiempo1+tiempo2+tiempo3+tiempo4+tiempo5)
	
	// Si todos los tiempos son penalizados
	
	Si tiempoTotal=(tiempoPenalizado*5) Entonces
		tiempoTotal=tiempoTotal+tiempoPenalizado
		
	FinSi
	
	// Salida
	
	Escribir "El tiempo total es de: ", tiempoTotal, " minutos"
	
FinProceso
