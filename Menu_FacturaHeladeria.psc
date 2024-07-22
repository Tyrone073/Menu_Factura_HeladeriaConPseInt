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
	Dimensionar prdt(10) // esto es un arreglo
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
	Escribir 'su factura es:', total

	Según total >= 1 Hacer
		valorPropina >= 10 & valorPropina <= 20 :
			Escribir 'muchas gracias qui un regalo'
		valorPropina >= 21 & valorPropina <= 40 :
			Escribir 'muchas gracias, si usted logra resolver estos ejercicios se llaba dos eleados a su elecccion'
			Para variable_numerica<-valor_inicial Hasta valor_final Con Paso paso Hacer
				secuencia_de_acciones
			Fin Para
		valorPropina >= 41 & valorPropina <= 100 :
			Escribir 'Muchas gracias, usted participara por el sorteo de X, diga un numero del 1 al 30'
			Leer numeroAzar
			numCorrecto = azar(30)+1
			si numeroAzar <> numCorrecto Entonces
				Escribir 'q lastima usted no dio con el numero correcto'
			SiNo
				Escribir 'Felicidades Usted a sido acreditadro a X'
			FinSi
		De Otro Modo:
			Escribir 'muchas gracias Por su compra'
	FinSegún
FinAlgoritmo
