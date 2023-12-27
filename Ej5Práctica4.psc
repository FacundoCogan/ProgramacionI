Proceso Ej5Práctica4
	
	Definir año1, año2, a, b, c, d, e, f Como entero
	
	Escribir "Ingresar una fecha en formato AAAAMMDD"
	Leer año1
	
	Escribir "Ingresar otra fecha en formato AAAAMMDD"
	Leer año2
	
	// Proceso del año1
	
	a=trunc(año1/10000)
	b=trunc(año1/100)
	b=(b mod 100)
	c=(año1 mod 100)
	
	// Proceso del año2
	
	d=trunc(año2/10000)
	e=trunc(año2/100)
	e=(e mod 100)
	f=(año2 mod 100)
	
	// Salidas
	
	Escribir "Usted ingresó esta fecha: ", a, "-", b, "-", c
	Escribir "Y esta otra fecha: ", d, "-" e, "-", f
	
	Si (a = d) y (b = e) y (c = f) Entonces
		Escribir "Las dos fechas son iguales" // MISMO AÑO A=D
		SiNo
			Si (a < d) Entonces
				Escribir "La primer fecha escrita es menor que la segunda" // EL PRIMER AÑO ES MÁS VIEJO
			SiNo
				Si (a > d) Entonces
					Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO AÑO ES MÁS VIEJO
				SiNo
					Si (b < e) Entonces
						Escribir "La primer fecha escrita es menor que la segunda" //  EL PRIMER MES ES MÁS VIEJO
					SiNo
						Si (b > e) Entonces
							Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO MES ES MÁS VIEJO
						SiNo
							Si (c < f) Entonces
								Escribir "La primer fecha escrita es menor que la segunda" // EL PRIMER DÍA ES MÁS VIEJO
							SiNo
								Si (c > f) Entonces
									Escribir "La segunda fecha escrita es menor que la primera" // EL SEGUNDO DÍA ES MÁS VIEJO
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		
	FinSi
	

FinProceso
