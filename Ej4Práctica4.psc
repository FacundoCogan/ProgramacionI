Proceso Ej4Práctica4
	
	Definir a, b, c Como Entero
	
	Escribir "Ingrese el tamaño del primer lado del triángulo (el mayor)"
	Leer a
	
	Escribir "Ingrese el tamaño del segundo lado del triángulo (el intermedio)"
	Leer b
	
	Escribir "Ingrese el tamaño del tercer lado del triángulo (el menor)"
	Leer c
	
	Si a < (b+c) Entonces
		Si (a <> b) y (b <> c) y (a <> c) Entonces
			Escribir "Este es un triángulo escaleno"
		SiNo
			Si (a = b) y (b = c) y (a = c) Entonces
				Escribir "Este es un triángulo equilátero"
			SiNo
				Si (a = b y b <> c) o (a <> b y b = c) o (a = c y c <> b) Entonces
					Escribir "Este es un triángulo isósceles"
				FinSi
			FinSi
		FinSi
		
	SiNo
		Escribir "Estas medidas no forman un triángulo"
		
		
	FinSi
	
	
FinProceso
