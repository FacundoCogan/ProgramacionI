Proceso Modelo1erParcial
	
	Definir nombre, sexo, discMejorPuntaje Como Caracter
	Definir puntajeCiclismo, puntajeNatacion, puntajeAtletismo, postulantesCalificados, cantidadPostulantes, cantAñosParticipar, maxPuntaje Como Entero
	Definir califica, pri Como Logico
	Definir promedio, sumaPromedios, auxRendimiento Como Real
	
	cantidadPostulantes=0
	postulantesCalificados=0
	sumaPromedios=0
	
	pri=Verdadero
	
	Escribir "Ingrese el nombre del postulante"
	Leer nombre
	
	Mientras nombre <> "" Hacer
		
		Repetir
			
			Escribir "Ingrese el sexo del postulante (F o M)"
			Leer sexo
			
		Hasta Que (sexo="F") o (sexo="M")
		
		Repetir 
			
			Escribir "Ingrese el puntaje de ciclismo (10-100)"
			Leer puntajeCiclismo
			
			
		Hasta Que (puntajeCiclismo>=10) y (puntajeCiclismo<=100) 
		
		Repetir 
			
			Escribir "Ingrese el puntaje de natación (10-100)"
			Leer puntajeNatacion
			
		Hasta Que (puntajeNatacion>=10) y (puntajeNatacion<=100) 
		
		Repetir 
			
			Escribir "Ingrese el puntaje de atletismo (10-100)"
			Leer puntajeAtletismo
			
			
		Hasta Que (puntajeAtletismo>=10) y (puntajeAtletismo<=100) 
		
		promedio=(puntajeAtletismo+puntajeCiclismo+puntajeNatacion)/3
		sumaPromedios=sumaPromedios+promedio
		
		
		Si (puntajeCiclismo>80) y (puntajeNatacion>80) y (puntajeAtletismo>80) Entonces
			califica=Verdadero
			postulantesCalificados=postulantesCalificados+1
			
			auxRendimiento=promedio
			cantAñosParticipar=0
			Mientras (auxRendimiento>80) Hacer
				auxRendimiento=auxRendimiento-(auxRendimiento*5/100)
				cantAñosParticipar=cantAñosParticipar+1
				
			FinMientras
			
		Sino 
			califica=Falso
		FinSi
		
		discMejorPuntaje="Ciclismo"
		maxPuntaje=puntajeCiclismo
		
		Si puntajeNatacion>maxPuntaje Entonces
			discMejorPuntaje="Natación"
			maxPuntaje=puntajeNatacion
		FinSi
		
		Si puntajeAtletismo>maxPuntaje Entonces
			discMejorPuntaje="Atletismo"
			maxPuntaje=puntajeAtletismo
		FinSi
		
		
		
		cantidadPostulantes=cantidadPostulantes+1
		
		Si pri Entonces
			pri=Falso
			mayorPromedio=promedio
			nomMayorPromedio=nom
			menorPromedio=promedio
			nomMenorPromedio=nom
		Sino
			Si promedio>mayorPromedio Entonces
				mayorPromedio=promedio
				nomMayorPromedio=nom
			Sino
				Si promedio<menorPromedio Entonces
					menorPromedio=promedio
					nomMenorPromedio=nom
				Fin Si
			Fin Si
		Fin Si
		
		Escribir "*** Datos del postulante ***"
		Escribir "****************************"
		Escribir "Nombre: ", nombre, " Sexo: ", sexo
		Escribir "Ciclismo: ", puntajeCiclismo, " Natación: ", puntajeNatacion, " Atletismo: ", puntajeAtletismo
		
		Si califica Entonces
			Escribir "Calificado"
			Escribir "Años para seguir participando: ", cantAñosParticipar
		Sino
			Escribir "No Calificado"
		Fin Si
		Escribir "Disciplina en la que obtuvo mejor Puntaje: ", discMejorPuntaje
		Escribir "Promedio: " , promedio
		
		
		Escribir "Ingrese el nombre del postulante"
		Leer nombre
		
		
	FinMientras
	
	Si cantPostulantes>0 Entonces
		Escribir "Cantidad de postulantes totales: ", cantidadPostulantes
		Escribir "Cantidad de postulantes calificados: ", cantPostulantesCalificados
		Escribir "Mayor promedio de puntajes: ",mayorPromedio, " de ", nomMayorPromedio  
		Escribir "Menor promedio de puntajes: ",menorPromedio, " de ", nomMenorPromedio  
		Escribir "Promedio entre todos los postulantes: ", (sumaPromedios/cantidadPostulantes)
	Sino
		Escribir "No se ingresaron datos"
	Fin Si
	
	
	
	
FinProceso



