Algoritmo mcd
	definir x Como Logico
	definir c,a,b,d,e Como Entero
	c = 2
	x = Verdadero
	Imprimir 'ingresa dos numeros bro Bv'
	leer a,b
	Mientras x <> Falso
		d = a%c
		e = b%c
		si (d==0 y  e==0)Entonces
			Imprimir 'el maximo comun divisor'
			Imprimir c
			x = falso
		FinSi
		si (c >= a y c >= b) Entonces
			Imprimir 'el maximo comun divisor es 1'
			x = falso
		FinSi
		c = c+1
	FinMientras
	
FinAlgoritmo
