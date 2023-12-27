Proceso Ej6Práctica3
	
	// Defino variables que voy a usar
	
	Definir palabra, x, x2, x3 Como Caracter
	
	// Entrada de datos

	Escribir "Ingrese una palabra de 12 caracteres (Ejemplo: PROGRAMACION)"
	Leer palabra
	
	// Proceso 1
	
	x=subcadena(palabra, 0, 11)
	
	//SALIDA 1
	
	Escribir "Los caracteres son: ", x	
	
	// Proceso 2
	
	x=Subcadena(palabra, 0, 0)
	x=Mayusculas(x)
	x2=Subcadena(palabra, 1, 11)
	x2=Minusculas(x2)
	x3=Concatenar(x, x2)
	
	// SALIDA 2
	
	Escribir "La palabra en formato nombre propio sería: ", x3
	
	// Proceso 3
	
	x2=subcadena(palabra, 0, 3)
	x2=Concatenar(x2, "-")
	x=Subcadena(palabra, 4, 7)
	x=Concatenar(x2, x)
	x=Concatenar(x, "-")
	x3=Subcadena(palabra, 8, 11)
	x3=Concatenar(x, x3)
	
	// SALIDA 3
	
	Escribir "La palabra en formato 4 letras es: ", x3
FinProceso
