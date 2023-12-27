Proceso ModeloParcial_IMC
	
	Definir apellido, nombre, dato, categoria, situacion, menorCant, apellidoMayorEdad, nomMayorEdad Como Caracter
	Definir peso, altura, imc, alturaAlCuadrado, sumaEdad, mayorEdad Como Real
	Definir edad, cantPacientes, contDelgado, contNormal, contSobrepeso, contObeso, situacionMenorCant Como Entero
	Definir pri Como Logico
	
	pri=Verdadero
	
	cantPacientes=0
	sumaEdad=0
	contDelgado=0
	contNormal=0
	contObeso=0
	contSobrepeso=0
	
	Escribir "¿Hay datos para cargar? (s/n)"
	Leer dato
	
	Mientras (dato="s") o (dato="S") Hacer
		
		Escribir "Ingrese el apellido del paciente"
		Leer apellido
		
		Escribir "Ingrese el nombre del paciente"
		Leer nombre 
		
		Escribir "Ingrese el peso del paciente"
		Leer peso
		
		Repetir
			Escribir "Ingrese la altura del paciente (en metros con decimales)"
			Leer altura
			
		Hasta Que (altura>1.00) y (altura<2.50)	
		
		Repetir
			Escribir "Ingrese la edad del paciente (18-55)"
			Leer edad
			
		Hasta Que (edad>=18) y (edad<=55)
		
		Si (edad<30) y (altura<=1.70) Entonces
			categoria="A1"
			
		SiNo
			Si (edad<30) y (altura>1.70) Entonces
				categoria="A2"
				
			SiNo
				Si (edad>=30) y (edad<40) y (altura<=180) Entonces
					categoria="C1"
					
				SiNo
					Si (edad>=30) y (edad<40) y (altura>180) Entonces
						categoria="C2"
					Sino	
						Si (edad>=40) Entonces
							categoria="D"
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
		
		alturaAlCuadrado=(altura)^2
		imc=peso/alturaAlCuadrado
		
		Si (imc<20) Entonces
			situacion="Delgado"
			contDelgado=contDelgado+1
		SiNo
			Si (imc<25) Entonces
				situacion="Normal"
				contNormal=contNormal+1
			SiNo
				Si (imc<30) Entonces
					situacion="Sobrepeso"
					contSobrepeso=contSobrepeso+1
				SiNo
					situacion="Obeso"
					contObeso=contObeso+1
					
				FinSi
			FinSi	
		FinSi
		
		cantPacientes=cantPacientes+1
		
		sumaEdad=sumaEdad+edad
		
		Si pri Entonces
			pri=Falso
			mayorEdad=edad
			nomMayorEdad=nombre
			apellidoMayorEdad=apellido
			
		Sino
			Si edad>mayorEdad Entonces
				mayorEdad=edad
				nomMayorEdad=nombre
				apellidoMayorEdad=apellido
				
			Fin Si
		Fin Si
		
		
		Escribir "Datos del paciente:"
		Escribir "Apellido: ", apellido
		Escribir "Nombre: ", nombre
		Escribir "Peso: ", peso
		Escribir "Altura: ", altura
		Escribir "Edad: ", edad
		Escribir "Su categoria es: ", categoria
		Escribir "Su IMC es: ", imc
		Escribir "Su situacion es: ", situacion
		
		Escribir "¿Hay datos para cargar? (s/n)"
		Leer dato
		
	FinMientras
	
	situacionMenorCant=contDelgado
	menorCant = "Delgado"
	
	Si (situacionMenorCant > contNormal) Entonces
		situacionMenorCant = contNormal
		menorCant = "Normal"
		
	FinSi
	
	Si (situacionMenorCant > contSobrepeso) Entonces
		situacionMenorCant = contSobrepeso
		menorCant = "Sobrepeso"
	FinSi
	
	Si (situacionMenorCant > contObeso) Entonces
		situacionMenorCant = contObeso
		menorCant = "Obeso"
	FinSi
	
	
	Si cantPacientes>0 Entonces
		
		Escribir "Cantidad de pacientes ingresados es de: ", cantPacientes
		Escribir "La edad promedio es de: ", (sumaEdad/cantPacientes)
		Escribir "El paciente de mayor edad es: ", apellidoMayorEdad, " ", nomMayorEdad, " con ", mayorEdad, " años"
		Escribir "La situación con menor cantidad de pacientes es: ", menorCant
		
	SiNo
		Escribir "No se ingresaron datos"
	FinSi
	
	
FinProceso
