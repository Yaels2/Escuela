Algoritmo listas
	Dimensionar lista[200] //definimos la cantidad maxima para la lista
	Escribir "Ingrese los nombres (enter en blanco para terminar):"//ponemos intrucciones
	cant <- 0
	Leer nombre
	//hacemos un ciclo que va parar cuando se de un enter con un espacio en blanco
	Mientras nombre<>"" Hacer 
		//aqui hacemos que la lista se haga grande y insertar el dato en la lista :D
		cant <- cant+1
		lista[cant] <- nombre
		//hacemos una sencilla estructura para saber que no se repite :D
		Repetir
			Leer nombre
			
			se_repite<- Falso
			
			para i<- 1 Hasta cant hacer
				Si nombre = lista[i] Entonces
					se_repite = Verdadero
				FinSi
			FinPara
		Hasta Que NO se_repite
	FinMientras
	
	//ahora hacemos otro ciclo para ordenar la lista
	Para i <- 1 Hasta cant Hacer
		pos_menor <- i
		para j <- i+1 hasta cant Hacer
			Si lista[j]<lista[pos_menor] Entonces
				pos_menor<-j
			FinSi
		FinPara
		
		aux <- lista[i]
		lista[i]<- lista[pos_menor]
		lista[pos_menor] <- aux
	FinPara
	Escribir "La lista ordenada es:"
	Para i<-1 Hasta cant Hacer
		Escribir " ",lista[i]
	FinPara

	
FinAlgoritmo
