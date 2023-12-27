Proceso sin_titulo
	
	definir codigo, stock, n, i, ventasMay, cod, cantV, mayorPrecioUni  como entero
	definir descrip, carga como caracter
	definir precioUnit como real
	
	Escribir "Ingrese la cantidad de Productos a procesar"
	Leer n
	
	dimension codigo[n], stock[n], descrip[n], precioUnit[n], ventasMay[n]
	
	//carga de datos
	Para i = 0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese CODIGO: "
		Leer codigo[i]
		Escribir "Ingrese la DESCRIPCION del producto: "
		Leer descrip[i]
		Escribir "Ingrese el PRECIO UNITARIO del producto: "
		Leer precioUnit[i]
		Escribir "Ingrese el STOCK del producto: "
		Leer stock[i]
		
	Fin Para
	
	/// PUNTO 1 - mostrar los datos de todos los productos
	Para i=0 hasta n-1 con paso 1 Hacer
		Escribir "---DATOS DEL PRODUCTO---"
		Escribir "Código: ", codigo[i]
		Escribir "Descripción: ", descrip[i]
		Escribir "Precio unitario: ", precioUnit[i]
		Escribir "Stock: ", stock[i]
	FinPara

	
	
	//ingresar las cantidad vendidas por producto
	//opción 1: se ingresa el total vendido del mes para cada producto
	//opción 2: se ingresan las ventas individuales de cada producto en el mes
	
	//opción 1
	Escribir "Ingrese si hay ventas para la carga: (S o N)"
	Leer carga
	mientras mayusculas(carga) = "S" hacer
		
		Escribir "Ingrese el CODIGO del producto que desea registrar la cantidad vendida"
		Leer cod
		
		i = 0
		mientras (i < n) y (cod <> codigo[i] ) hacer
			i = i + 1
		FinMientras
		
		si (i < n) Entonces
			Escribir "Ingrese la cantidad que se vendió del PRODUCTO " codigo[i] " - " descrip[i] " : "
			Leer ventasMay[i]
			
		SiNo
			Escribir "El codigo de producto ingresado no existe. Intentelo nuevamente..."
		FinSi
		
		Escribir "Ingrese si hay ventas para la carga: (S o N)"
		Leer carga
		
	FinMientras
	
	
	
	//opcion 2
	Escribir "Ingrese si hay ventas para la carga: (S o N)"
	Leer carga
	mientras mayusculas(carga) = "S" hacer
		
		Escribir "Ingrese el CODIGO del producto que desea registrar la cantidad vendida"
		Leer cod
		
		i = 0
		mientras (i < n) y (cod <> codigo[i] ) hacer
			i = i + 1
		FinMientras
		
		si (i < n) Entonces
			Escribir "Ingrese la cantidad que se vendió del PRODUCTO " codigo[i] " - " descrip[i] " : "
			Leer cantV
			
			ventasMay[i] = ventasMay[i] + cantV
			
		SiNo
			Escribir "El codigo de producto ingresado no existe. Intentelo nuevamente..."
		FinSi
		
		Escribir "Ingrese si hay ventas para la carga: (S o N)"
		Leer carga
		
	FinMientras
	
	/// PUNTO 2: descontar del stock la cantidad vendida. Informar el stock que quedó de cada producto. 
	/// Indicar con un cartel si hay que reponer stock si la cantidad es menor o igual a 5
	
	Para i = 0 hasta n-1 Con Paso 1 Hacer
		ventasMay[i]=0
	FinPara
	
	Para i=0 hasta n-1 con paso 1 Hacer
		
		stock[i] = stock[i] - ventasMay[i]
		
		
		Si stock[i] <= 5 Entonces
			Escribir "Código del producto a reponer stock: ", codigo[i]
		SiNo
			Escribir "Hay stock disponible"
		FinSi
		
		Escribir "El stock del producto" codigo[i], " luego de la venta: ", stock[i] 
	FinPara
	Escribir "Valor de i: ", i
	
	
	
	/// PUNTO 3: Los datos del producto con mayor precio unitario
	mayorPrecioUni = 0
	para i=1 hasta n-1 con paso 1 Hacer
		Si precioUnit[i] > precioUnit[mayorPrecioUni] Entonces
			mayorPrecioUni = i
		FinSi
	FinPara
	
	Escribir "Los datos del producto con mayor precio unitario son:"
	Escribir "Código: ", codigo[mayorPrecioUni]
	Escribir "Descripción: ", descrip[mayorPrecioUni]
	Escribir "Precio unitario: ", precioUnit[mayorPrecioUni]
	Escribir "Stock: ", stock[mayorPrecioUni]
	
	
	
FinProceso
