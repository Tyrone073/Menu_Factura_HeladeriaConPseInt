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
	Definir pregunta Como Cadena
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
	Escribir 'les gustaria dejarnos una propina?'
	Leer preguntaPropina
	Definir preguntaPropina Como Caracter
	Según preguntaPropina='si' Hacer
		opcion_1:
			Escribir 'muchas gracias qui un regalo'
		opcion_2:
			Escribir 'muchas gracias usted participara en nuestro sorteo'
		De Otro Modo:
			Escribir 'muchas gracias'
	FinSegún
FinAlgoritmo
