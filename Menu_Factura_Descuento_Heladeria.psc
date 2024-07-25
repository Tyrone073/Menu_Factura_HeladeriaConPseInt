Algoritmo Menu_Factura_Descuento_Heladeria
	Escribir 'Bienvenid@ a la heladeria A'
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
	// esto es un arreglo
	Dimensionar prdt(10)
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
	// Variable para iniciar y guardar el precio de una cantidad de un producto.
	total <- 0
	Escribir 'Buenos días'
	Repetir
		Escribir '¿qué desea ordenar?'
		Escribir 'Escriba el indice del producto'
		Leer producto 
		Escribir '¿Cuánto va a llevar?'
		Leer cantidad
		ProductoBuscado <- prdt[producto]
		costoTotal <- ProductoBuscado*cantidad
		total <- total+costoTotal
		Escribir 'Hasta ahora, cuenta con un valor total de: $', total
		Escribir 'Desea algo más?'
		Leer pregunta
	Hasta Que pregunta='no' O pregunta=' ' O pregunta=''
	Escribir 'Su factura es:', total, '$'
	Escribir 'Por motivo de la inauguración, ofrecemos descuentos de hasta el 97% dependiendo de su suerte.'
	Escribir ' A continuación, se presentan sus 4 descuentos disponibles.'
	// 4 cupone de descuentos a vase de un numero al azar
	Dimensionar descuento(4)
	Para numeroA<-1 Hasta 4 Con Paso 1 Hacer
		numeroB <- azar(9)+1
		descuento[numeroA] <- redon(numeroA*numeroB*2.7)
		Escribir 'Descuento ', numeroA, ': ', descuento[numeroA], '%'
	FinPara
	Escribir 'Escoja uno de ellos:'
	Leer cuponSeleccionado
	Mientras cuponSeleccionado<>descuento[1] Y cuponSeleccionado<>descuento[2] Y cuponSeleccionado<>descuento[3] Y cuponSeleccionado<>descuento[4] Hacer
		Escribir 'Ese valor no corresponde a un cupón de descuento asignado.'
		Escribir 'Escriba un valor válido.'
		Leer cuponSeleccionado1
		cuponSeleccionado <- cuponSeleccionado1
	FinMientras
	cuponDescuento <- cuponSeleccionado/100
	descuentoTotal <- total*cuponDescuento
	facturaTotal <- total-descuentoTotal
	Escribir 'Su valor antiguo era: ', total ', con su descuento del: ', cuponSeleccionado, '% su monto a pagar es:', facturaTotal, '$'
	Escribir 'Muchas gracias por su compra.'
FinAlgoritmo
