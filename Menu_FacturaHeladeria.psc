Algoritmo Menu_FacturaHeladeria
	Escribir 'Bienbenid@s a la heladeria A'
	Escribir 'Este es nuestro Menu'
	Escribir ' '
	Escribir 'HELADOS'
	Escribir '1. CONO SIMPLE....................$1,50'
	Escribir '2. CONO DOBLE.....................$2,80'
	Escribir '3. TULIPAN........................$3,50'
	Escribir '4. CREPE HELADO Y NUTELLA.........$4,80'
	Escribir 'POSTRES'
	Escribir '5. PORCION DE TORTA DE LA CASA....$1,50'
	Escribir '6. ENSALADA DE FRUTAS.............$3,25'
	Escribir '7. QUESADILLAS....................$0,50'
	Escribir '8. FRESAS CON CREMA...............$2.00'
	Escribir 'BEBIDAS FRIAS'
	Escribir '9. MILKSHAKE .....................$3,00'
	Escribir '10. JUGOS NATURALES...............$2,00'
	Dimensionar prdt(10)// esto es un arreglo
	prdt[1] <- 1.5
	prdt[2] <- 2.8 
	prdt[3] <- 3.5
	prdt[4] <- 4.8
	prdt[5] <- 1.5
	prdt[6] <- 3.25
	prdt[7] <- 0.5
	prdt[8] <- 2
	prdt[9] <- 3
	prdt[10] <- 2
	total <- 0 //Variable para iniciar y guardar el precio de una cantidad de un producto.
	Repetir
		Escribir 'Buenos d�as, �qu� desea ordenar?'
		Escribir 'Escriba el indice del producto'
		Leer producto
		Escribir '�Cu�nto va a llevar?'
		Leer cantidad
		ProductoBuscado <- prdt[producto]
		costoTotal <- ProductoBuscado*cantidad
		total <- total+costoTotal
		Escribir 'Hasta ahora, cuenta con un valor total de: $', total
		Escribir 'Desea algo m�s?'
		Leer pregunta
	Hasta Que pregunta='no' O pregunta=' ' O pregunta=''
	Escribir 'Su factura es:', total, '$'
	// 4 cupone de descuentos a vase de un numero al azar
	
	Escribir 'Con motivo de la inauguraci�n, ofrecemos descuentos de hasta el 97% dependiendo de su suerte.'
	Escribir ' A continuaci�n, se presentan sus 4 descuentos disponibles.'
	Dimensionar descuento(4)
	Para numeroA<-1 Hasta 4 Con Paso 1 Hacer
		numeroB <- azar(9)+1
		descuento[numeroA] <- redon(numeroA*numeroB*2.7)
		Escribir 'Descuento ', numeroA, ': ', descuento[numeroA], '%'
	FinPara
	Escribir 'Escoja uno de ellos:'
	Leer cuponSeleccionado
	Mientras cuponSeleccionado<>descuento[1] & cuponSeleccionado<>descuento[2] & cuponSeleccionado<>descuento[3] &cuponSeleccionado<>descuento[4] Hacer
		Escribir 'Ese valor no corresponde a un cup�n de descuento asignado.'
		Escribir 'Escriba un valor v�lido.'
		Leer cuponSeleccionado1
		cuponSeleccionado = cuponSeleccionado1
	FinMientras
	cuponDescuento <- cuponSeleccionado/100
	descuentoTotal <- total*cuponDescuento
	facturaTotal = total-descuentoTotal
	Escribir 'Con su descuento del: ', cuponSeleccionado, '% su monto a pagar es:', facturaTotal, '$'
	Escribir 'Muchas gracias por su compra.'
FinAlgoritmo
