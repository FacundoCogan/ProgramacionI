//Ejercicio 14:
//	Según el calendario lunar chino, los sesenta años que componen su siglo se dividen en ciclos de doce años. Cada uno de los cuales queda representado por un animal determinante de la personalidad de cada persona.
//	
//Dado un año  correspondiente a una fecha de nacimiento, informar el animal correspondiente a su horóscopo chino, teniendo en cuenta lo siguiente:
//	
//	Animal	Años
//	Rata	1900, 1912,1924, etc.
//	Buey o Búfalo	1901, 1913, etc.
//	Tigre	1902, 1914, etc.
//	Conejo	1903, 1915, etc.
//	Dragón	1904, 1916, etc.
//	Serpiente	1905, 1917, etc.
//	Caballo	1906, 1918, etc.
//	Cabra	1907, 1919, etc.
//	Mono	1908, 1920, etc.
//	Gallo	1909, 1921, etc.
//	Perro	1910, 1922, etc.
//	Cerdo o Jabalí	1911, 1923, etc.
//	
//	
//	
//	

Proceso Ej14Práctica4
	
	// Defino variables
	
	Definir año Como Entero
	
	// Ingreso de datos
	
	Escribir "Por favor ingrese su año de nacimiento"
	Leer año
	
	//Proceso y salida
	
	Segun año hacer 
		1960, 1972, 1984, 1996: Escribir "Su animal según el horóscopo chino es la rata"
		1961, 1973, 1985, 1997: Escribir "Su animal según el horóscopo chino es el buey o el búfalo"
		1962, 1974, 1986, 1998: Escribir "Su animal según el horóscopo chino es el tigre"
		1963, 1975, 1987, 1999: Escribir "Su animal según el horóscopo chino es el conejo"
		1964, 1976, 1988, 2000: Escribir "Su animal según el horóscopo chino es el dragón"
		1965, 1977, 1989, 2001: Escribir "Su animal según el horóscopo chino es la serpiente"
		1966, 1978, 1990, 2002: Escribir "Su animal según el horóscopo chino es el caballo"
		1967, 1979, 1991, 2003: Escribir "Su animal según el horóscopo chino es la cabra"
		1968, 1980, 1992, 2004: Escribir "Su animal según el horóscopo chino es el mono"
		1969, 1981, 1993, 2005: Escribir "Su animal según el horóscopo chino es el gallo"
		1970, 1982, 1994, 2006: Escribir "Su animal según el horóscopo chino es el perro"
		1971, 1983, 1995, 2007: Escribir "Su animal según el horóscopo chino es el cerdo o el jabalí"
	FinSegun
	
	
	
FinProceso
