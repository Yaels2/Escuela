Algoritmo loco
	definir n1,n3,n4,n5 Como Entero
	Imprimir "Cuantos numeros deseas imprimir"
	leer n1
	Dimensionar n2[n1]
	n3 = 0
	mientras n3 <> n1 
		n5 = azar(9) +1
		n2[n3] = n5
		n3 = n3 + 1
	FinMientras
	
	mientras n4 <> n1
		Mostrar n2[n4]
		n4 = n4 +1
	FinMientras
	
FinAlgoritmo
