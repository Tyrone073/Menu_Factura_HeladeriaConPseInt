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
	Dimensionar prdt(10)
	prdt[1] <- 1.5
	prdt[2] <- 2.8 // esto es un arreglo
	prdt[3] <- 3.5
	prdt[4] <- 4.8
	prdt[5] <- 1.5
	prdt[6] <- 3.25
	prdt[7] <- 0.5
	prdt[8] <- 2
	prdt[9] <- 3
	prdt[10] <- 2
	total <- 0
	Repetir
		Escribir 'Que desea ordenar?'
		Escribir 'indice del producto'
		Leer producto
		Escribir 'cantidad'
		Leer cantidad
		ProductoBuscado <- prdt[producto]
		operacion1 <- ProductoBuscado*cantidad
		total <- total+operacion1
		Escribir 'hasta ahora cuenta con  un valor total: $', total
		Escribir 'desea algo mas?'
		Leer pregunta
	Hasta Que pregunta='no' O pregunta=' ' O pregunta=''
	Escribir 'Su factura es:', total, '$'
	// 4 cupone de descuentos a vase de un numero al azar
	Dimensionar descuento(4)
	Escribir 'Por motivos de la inaguracion '
	Escribir 'Estos son sus 4 descuentos, escoja uno de ellos: '
	Para numeroA<-1 Hasta 4 Con Paso 1 Hacer
		numeroB <- azar(9)+1
		descuento[numeroA] <- redon(numeroA*numeroB*2.7)
		Escribir 'Descuento ', numeroA, ': ', descuento[numeroA], '%'
	FinPara
	Leer cuponSeleccionado
	Mientras cuponSeleccionado<>descuento[1] Hacer
		Escribir 'Ese valor no es un cupon de descuento asignado'
		Escribir 'Escriba un valor designado'
		Leer cuponSeleccionado1
		cuponSeleccionado = cuponSeleccionado1
	FinMientras
	descuentoTotal <- cuponSeleccionado/100
	facturaTotal <- total*descuentoTotal
	Escribir 'Con su Descuento del:', cuponSeleccionado, '% su monto a pagar es:', facturaTotal, '$'
	Escribir 'Muchas gracias por su compra'
FinAlgoritmo
