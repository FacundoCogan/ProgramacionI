Proceso Ej12Práctica4
	
	Definir dia, mes, año Como Entero
	
	Escribir "Ingrese un día en una fecha cualquiera (1-31)"
	Leer dia
	
	Escribir "Ingrese un mes cualquiera (1-12)"
	Leer mes
	
	Escribir "Ingrese un año cualquiera"
	Leer año
	
	
	Escribir "La fecha que usted escribió es: ", dia, "/", mes, "/", año
	
	
	Si (año mod 4)=0 Entonces
		Si (mes=2) y (dia=29) Entonces
			Escribir "La fecha introducida es correcta"
		FinSi	
	SiNo
		Si (mes=2) y (dia=29) entonces
			Escribir "La fecha introducida es incorrecta"
		Sino
			Si (dia>30) y (mes=4 o mes=6 o mes=9 o mes=11) Entonces
				Escribir "La fecha introducida es incorrecta"
			Sino
				Si (dia<32) y (mes<13) Entonces
					Escribir "La fecha introducida es correcta"
				SiNo
					Escribir "La fecha introducida es incorrecta"
				FinSi	
			FinSi		
		FinSi			
	FinSi
	
FinProceso
