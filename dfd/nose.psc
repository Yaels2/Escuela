Algoritmo nose
	definir i,l,a,n1 Como Entero
	Escribir 'ingresa que tan grande sea la lista'
	Leer a
	i <- 1
	l <- 0
	Dimensionar arr1[a]
	
	Mientras i<>a Hacer
		n1 <- azar(9) + 1
		arr1[i] <- azar(n1)
		i <- i+1
	FinMientras
	
	Mientras  l<>a Hacer
		imprimir arr1[l]
		l <- l+1
	FinMientras
	
FinAlgoritmo
