Proceso Ej4Pr�ctica4
	
	Definir a, b, c Como Entero
	
	Escribir "Ingrese el tama�o del primer lado del tri�ngulo (el mayor)"
	Leer a
	
	Escribir "Ingrese el tama�o del segundo lado del tri�ngulo (el intermedio)"
	Leer b
	
	Escribir "Ingrese el tama�o del tercer lado del tri�ngulo (el menor)"
	Leer c
	
	Si a < (b+c) Entonces
		Si (a <> b) y (b <> c) y (a <> c) Entonces
			Escribir "Este es un tri�ngulo escaleno"
		SiNo
			Si (a = b) y (b = c) y (a = c) Entonces
				Escribir "Este es un tri�ngulo equil�tero"
			SiNo
				Si (a = b y b <> c) o (a <> b y b = c) o (a = c y c <> b) Entonces
					Escribir "Este es un tri�ngulo is�sceles"
				FinSi
			FinSi
		FinSi
		
	SiNo
		Escribir "Estas medidas no forman un tri�ngulo"
		
		
	FinSi
	
	
FinProceso
