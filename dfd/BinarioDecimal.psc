Algoritmo BinarioDecimal
	x = 0
	p = 0
	r = 2
	e = 0
	d = 0
	s = 0
	Dimensionar Bin[8]
	Escribir "Escribe el numero binario a convertir: "
	//Ingresar el numero binario
	Repetir
		x = x + 1
		Leer Bin[x]
	Hasta Que x == 8
	
	//Conversion del binario
	Repetir
		p = p + 1
		Si Bin[p] == 1 Entonces
			Escribir "Es ", Bin[p]
			s = r ^ e
			Escribir "Es s: ", s
			e = e + 1
			Escribir "Es r: ",r
			d = s + d
			Escribir "Es d: ",d
			
		SiNo 
			Escribir "Es 0"
			Escribir  "Es e: ",e
			e = e + 1
		Fin Si
	Hasta Que p == 8
	Escribir "Resultado es : ",d
FinAlgoritmo
