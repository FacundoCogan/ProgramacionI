Proceso Ej5Pr�ctica4
	
	Definir a�o1, a�o2, a, b, c, d, e, f Como entero
	
	Escribir "Ingresar una fecha en formato AAAAMMDD"
	Leer a�o1
	
	Escribir "Ingresar otra fecha en formato AAAAMMDD"
	Leer a�o2
	
	// Proceso del a�o1
	
	a=trunc(a�o1/10000)
	b=trunc(a�o1/100)
	b=(b mod 100)
	c=(a�o1 mod 100)
	
	// Proceso del a�o2
	
	d=trunc(a�o2/10000)
	e=trunc(a�o2/100)
	e=(e mod 100)
	f=(a�o2 mod 100)
	
	// Salidas
	
	Escribir "Usted ingres� esta fecha: ", a, "-", b, "-", c
	Escribir "Y esta otra fecha: ", d, "-" e, "-", f
	
	Si (a = d) y (b = e) y (c = f) Entonces
		Escribir "Las dos fechas son iguales" // MISMO A�O A=D
		SiNo
			Si (a < d) Entonces
				Escribir "La primer fecha escrita es menor que la segunda" // EL PRIMER A�O ES M�S VIEJO
			SiNo
				Si (a > d) Entonces
					Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO A�O ES M�S VIEJO
				SiNo
					Si (b < e) Entonces
						Escribir "La primer fecha escrita es menor que la segunda" //  EL PRIMER MES ES M�S VIEJO
					SiNo
						Si (b > e) Entonces
							Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO MES ES M�S VIEJO
						SiNo
							Si (c < f) Entonces
								Escribir "La primer fecha escrita es menor que la segunda" // EL PRIMER D�A ES M�S VIEJO
							SiNo
								Si (c > f) Entonces
									Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO D�A ES M�S VIEJO
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		
	FinSi
	

FinProceso
