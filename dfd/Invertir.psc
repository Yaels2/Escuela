Algoritmo invertir
	definir a Como cadena
	definir i,j Como Entero
	Imprimir "Ingresa una palabra"
	leer a
	
	para i<- longitud(a) hasta 0 con paso -1 hacer
		letra <- Subcadena(a,i,i)
		frase <- frase+letra
	FinPara
	Imprimir frase
	si frase == a Entonces
		Imprimir "es un palindromo"
	FinSi
	
FinAlgoritmo
