Proceso sin_titulo
	
	Definir vecLitros, dim, i Como Entero
	Definir vecRazas, vecId, fechaHora, id Como Caracter
	
	Escribir "Ingrese la cantidad de vacas"
	Leer dim
	
	Dimension vecId[dim]
	Dimension VecRazas[dim]
	Dimension vecLitros[dim]
	
	// Ingreso de datos y llenado de los vectores
	
	Para i=0 Hasta dim-1 Con Paso 1 Hacer
		
		Escribir "Ingrese la identificación de la vaca"
		leer vecId[i]
		
		Repetir
			Escribir "Ingrese la raza de la vaca (holando - jersey - hereford - aberdeenAngus)"
			Leer vecRazas[i]
			
		Hasta Que vecRazas[i]=Minusculas("Holando") o vecRazas[i]=Minusculas("Jersey") o vecRazas[i]=Minusculas("Hereford") o vecRazas[i]=Minusculas("AberdeenAngus")
		
		Para i=0 Hasta dim-1 con paso 1 Hacer
			vecLitros[i]=0
		FinPara
		
		Escribir "Ingrese la fecha y hora (para dejar de ingresar, escribir: 00)"
		Leer fechaHora
		
		Repetir
			
			Escribir "Ingrese la identificación de la vaca"
			Leer id
			
			Repetir
				posI=0
				
				Mientras (posI<dim y id <> vecId[posI])
					
					
					posI=posI+1
				FinMientras 
				
				Si (posI=dim) Entonces
					Escribir "Código ingresado erróneo"
				FinSi
				
				
			Hasta Que posI<>dim
			
			
		Hasta Que (fechaHora="00") 
		
		
		
	FinPara
	
	
	
	
	
	
	
FinProceso
