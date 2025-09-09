Algoritmo fibonnaci
	Definir a, b, c, d Como Entero
	Escribir 'mostraremos los primeros'
	Leer x
	b <- 1
	c <- 1
	Mientras a<>x Hacer
		d <- b+c
		c <- d
		b <- c-b
		a <- a+1
		Escribir d
	FinMientras
FinAlgoritmo
