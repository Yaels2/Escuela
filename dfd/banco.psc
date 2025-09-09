Algoritmo banco
	definir total como entero 
	definir señal Como Logico
	señal <- Verdadero
	Dimensionar  billetes[6], denom[6]
	denom[0] <- 20
	denom[1] <- 50
	denom[2] <- 100
	denom[3] <- 200
	denom[4] <- 500
	denom[5] <- 1000
	Para i <- 0 Hasta 5 Con Paso 1 Hacer
		billetes[i] <- 10
		Imprimir "Denominacion:",denom[i]," Cantidad:",billetes[i]
	FinPara
	Para i <- 0 Hasta 5 Con Paso 1 Hacer
		total <- total + billetes[i] * denom[i]
	FinPara
	Imprimir total
	
	mientras señal == Verdadero
		imprimir "Que desea hacer:"
		Imprimir "1._ Retirar"
		imprimir "2._ Depositar"
		Imprimir "3._ Salir"
		leer op
		
		segun op Hacer
			1:
				Imprimir "¿Cuanto desea retirar?"
				
		FinSegun
		
	FinMientras
	

	
	
	
FinAlgoritmo
