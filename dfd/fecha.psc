
Algoritmo fecha
	definir dia,mes,año Como Entero
	definir señal Como Logico
	señal <- Verdadero
	Dimensionar  arr1[3], arr2[3]
	date <- ConvertirATexto(FechaActual())
	Imprimir "Ingrese su año de nacimiento en el siguiente orden"
	Imprimir "DD-MM-AAAA"
	leer tex2
	//llenar el primer arreglo
	arr1[0] <- ConvertirANumero(Subcadena(date,0,3)) //obtiene año
	arr1[1] <- ConvertirANumero(Subcadena(date,4,6))//obtiene mes
	arr1[2] <- ConvertirANumero(Subcadena(date,6,8))//obtiene dia
	
	//llenar el segundoxd
	arr2[0] <- Subcadena(tex2,0,1)//obtiene dia
	arr2[1] <- Subcadena(tex2,3,4)//obtiene mes
	arr2[2] <- Subcadena(tex2,6,9) //obtiene año

	
	
	si Esnumero(arr2[0]) == Verdadero y  Esnumero(arr2[1]) == Verdadero y  Esnumero(arr2[2]) == Verdadero  y señal == Verdadero Entonces
		dia <- ConvertirANumero(arr2[0])
		mes <- ConvertirANumero(arr2[1])
		año <- ConvertirANumero(arr2[2])
		
		Si mes >= 1 Y mes <= 12 Entonces
			Segun mes Hacer
				1,3,5,7,8,10,12:
					Si dia < 1 O dia > 31 Entonces
						Escribir "Día inválido para este mes (debe estar entre 1 y 31)"
						señal <- Falso
					FinSi
				4,6,9,11:
					Si dia < 1 O dia > 30 Entonces
						Escribir "Día inválido para este mes (debe estar entre 1 y 30)"
						señal <- Falso
					FinSi
				2:
					Si dia < 1 O dia > 28 Entonces
						Escribir "Febrero solo tiene hasta 28 días en año no bisiesto"
						señal <- Falso
					FinSi
			FinSegun
			
		Sino
			Escribir "Mes inválido (debe estar entre 1 y 12)"
			señal <- Falso
		FinSi
		
		si año < 1900  y año > arr1[0]  Entonces
			Escribir "Año no valido"
			señal <- Falso
		FinSi
		
	Sino 
		Imprimir "no valido"
	FinSi
	
	si señal == Verdadero Entonces
		Imprimir arr1[0]
		edad <- arr1[0]-año
		Imprimir"Tu edad es:" , edad," años"
	FinSi
	


FinAlgoritmo


Funcion resultado <- EsNumero(t)
    Definir i Como Entero
    Definir caractr Como Caracter
    resultado <- Verdadero
    Para i <- 0 Hasta Longitud(t) -1 Con Paso 1 Hacer
        caractr <- Subcadena(t, i, i)
        Si (caractr = "0" O caractr = "1" O caractr = "2" O caractr = "3" O caractr = "4" O caractr = "5" O caractr = "6" O caractr = "7" O caractr = "8" O caractr = "9") Entonces
            resultado <- Verdadero
        SiNo
			resultado <- Falso
		FinSi
		
    FinPara
FinFuncion




