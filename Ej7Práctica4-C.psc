Proceso sin_titulo
	Definir x, c, z, t Como Entero
	
	x = -1
	c = 3
	z = 4
	t = 3
	
	Si (x > 0) o (c > z) y (t > x) o (t < 5) Entonces
		x=0
		t=c+z
	SiNo
		z=x-c
		Si (z > 0) entonces t=-t
			c=0
		FinSi
	FinSi
	
	Escribir "El valor de x es: ", x
	Escribir "El valor de c es: ", c
	Escribir "El valor de z es: ", z
	Escribir "El valor de t es: ", t
	
FinProceso
