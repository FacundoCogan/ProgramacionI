Proceso sin_titulo
	
	Definir puntajeCiclismo, puntajeNatacion, puntajeAtletismo, mejorPuntaje, cantAñosAParticipar, cantPostulantes, cantCalificados Como Entero
	Definir nombre, sexo, mejorDisciplina, mayorPromedioNombre, menorPromedioNombre Como Caracter
	Definir califica, pri Como Logico
	Definir promedio, mayorPromedio, menorPromedio, sumaPromedio, auxRendimiento Como Real
	
	califica=Verdadero
	cantPostulantes=0
	cantCalificados=0
	pri=Verdadero
	sumaPromedio=0
	
	Escribir "Ingrese el nombre del postulante"
	Leer nombre
	
	Mientras (nombre<>" ") Hacer
		
		Repetir
			Escribir "Ingrese el sexo del participante (M/F)"
			Leer sexo
			
		Hasta Que (sexo="M") o (sexo="F")
		
		Repetir
			Escribir "Ingrese el puntaje de ciclismo"
			Leer puntajeCiclismo
			
		Hasta Que (puntajeCiclismo>=10) y (puntajeCiclismo<=100)
		
		Repetir
			Escribir "Ingrese el puntaje de natación"
			Leer puntajeNatacion
			
		Hasta Que (puntajeNatacion>=10) y (puntajeNatacion<=100)
		
		Repetir
			Escribir "Ingrese el puntaje de atletismo"
			Leer puntajeAtletismo
			
		Hasta Que (puntajeAtletismo>=10) y (puntajeAtletismo<=100)
		
		promedio=(puntajeCiclismo+puntajeNatacion+puntajeAtletismo)/3
		
		Si (puntajeCiclismo>80) y (puntajeNatacion>80) y (puntajeAtletismo>80) Entonces
			califica=Verdadero
			cantCalificados=cantCalificados+1
			
			auxRendimiento=promedio
			cantAñosAParticipar=0
			
			Mientras (auxRendimiento>80) Hacer
				
				auxRendimiento=auxRendimiento-(auxRendimiento*5/100)
				cantAñosAParticipar=cantAñosAParticipar+1
				
			FinMientras
		SiNo
			califica=Falso
		FinSi
		
		mejorPuntaje=puntajeCiclismo
		mejorDisciplina="Ciclismo"
		
		Si puntajeNatacion>mejorPuntaje Entonces
			mejorDisciplina="Natacion"
		FinSi
		
		Si puntajeAtletismo>mejorPuntaje Entonces
			mejorDisciplina="Atletismo"
		FinSi
		
		
		
		cantPostulantes=cantPostulantes+1
		
		Si pri=Verdadero Entonces
			mayorPromedio=promedio
			menorPromedio=promedio
			mayorPromedioNombre=nombre
			menorPromedioNombre=nombre
			pri=Falso
		SiNo
			Si promedio>mayorPromedio Entonces
				mayorPromedio=promedio
				mayorPromedioNombre=nombre
			SiNo
				Si promedio<menorPromedio Entonces
					menorPromedio=promedio
					menorPromedioNombre=nombre
				FinSi
			FinSi
		FinSi
		
		sumaPromedio=sumaPromedio+promedio
		
		Escribir "-------Datos del postulante--------"
		Escribir "El nombre del postulante es: ", nombre
		Escribir "El sexo del postulante es: ", sexo
		Escribir "El puntaje en ciclismo: ", puntajeCiclismo
		Escribir "El puntaje en natación: ", puntajeNatacion
		Escribir "El puntaje en Atletismo: ", puntajeAtletismo
		Escribir "El mejor puntaje lo obtuvo en: ", mejorDisciplina
		Escribir "El promedio de puntajes obtenidos fue de: ", promedio
		
		Si califica=Verdadero Entonces
			Escribir "Califica"
			Escribir "Los años que puede seguir participando: ", cantAñosAParticipar
		SiNo
			Escribir "No calificado"
		FinSi
		
		Escribir "Ingrese el nombre del postulante"
		Leer nombre
		
	FinMientras
	
	Si (cantPostulantes>0) Entonces
		Escribir "Cantidad de postulantes totales: ", cantPostulantes
		Escribir "Cantidad de postulantes calificados: ", cantCalificados
		Escribir "Mayor promedio de puntajes: ", mayorPromedio, " de: ", mayorPromedioNombre
		Escribir "Menor promedio de puntajes: ", menorPromedio, " de: ", menorPromedioNombre
		Escribir "Promedio de puntajes entre todos los postulantes: ", (sumaPromedio/cantPostulantes)
		
	FinSi
	
	
FinProceso
