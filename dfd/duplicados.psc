Algoritmo duplicados
	definir n1,n2,n3 Como Entero
	dimensionar arr1[100]
	dimensionar arr2[100]
	Imprimir "De que tamaño desea su arreglo"
	leer n1
	para i <- 0 Hasta n1-1 Con Paso 1 Hacer
		imprimir "ingrese el numero ",i+1," de su arreglo"
		leer n2
		arr1[i] <- n2
	FinPara
	
	para i <- 0 Hasta n1 Con Paso 1 Hacer
		para j <- i+1 hasta n1 Con Paso 1 hacer
			si arr1[i] == arr1[j] Entonces
				n3 <- arr1[i]
				arr2[i] <- n3 
			FinSi
		FinPara
	FinPara
	
	Para i <- 0 hasta n1 Hacer
		si arr2[i] <> 0 Entonces
			imprimir arr2[i]
		FinSi
	FinPara

FinAlgoritmo
