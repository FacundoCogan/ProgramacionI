Proceso Ej2Práctica4
	
	Definir porcentaje Como Entero
	
	Escribir "Ingrese el porcentaje de respuestas correctas obtenido sin el %"
	Leer porcentaje
	
	Si porcentaje >= 90 Entonces
		Escribir "El nivel del postulante es: superior"
	SiNo
		Si porcentaje >= 75 Entonces
			Escribir "El nivel del postulante es: medio"
		SiNo
			Si porcentaje >=50 Entonces
				Escribir "El nivel del postulante es: medio"
			SiNo
				Si porcentaje < 50 Entonces
					Escribir "El nivel del postulante es: fuera de nivel"
				FinSi
			FinSi
			
		FinSi
	FinSi
	
FinProceso
