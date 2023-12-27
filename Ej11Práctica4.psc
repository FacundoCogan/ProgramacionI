Proceso Ej11Práctica4
	
	Definir dia, mes Como Entero
	
	Escribir "Ingrese un día en una fecha cualquiera (1-31)"
	Leer dia
	
	Escribir "Ingrese un mes cualquiera (1-12)"
	Leer mes
	
	Escribir "La fecha que usted escribió es: ", dia, "/", mes
	
	Si (mes=2) y (dia>28) Entonces
		Escribir "La fecha introducida es incorrecta"
	SiNo
		Si (mes=4) o (mes=6) o (mes=9) o (mes=11) y (dia>30) Entonces
			Escribir "La fecha introducida es incorrecta"
		SiNo
			Si (dia<32) y (mes<13) Entonces
				Escribir "La fecha introducida es correcta"
			SiNo
				Escribir "La fecha introducida es incorrecta"
			FinSi
		FinSi
	FinSi
FinProceso
