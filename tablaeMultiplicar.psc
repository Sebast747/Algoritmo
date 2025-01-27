Algoritmo tablaeMultiplicar
	Escribir "¿Te sabes las tablas de multiplicar?"
	Leer conocimientoEnTablas
	Si conocimientoEnTablas == "si" ||  conocimientoEnTablas == "SI" Entonces 		
		//Le pregunta al usuario que tabla se sabe
		Escribir "La persona sabe multiplicar"
		//Asignamos la respuesta del usuario a la variable tablaQuesabe
		Leer tablaQuesabe //Esperamos un numero ej. 5
		//Le decimos que nos diga esa hasta el 10
		//*********************//
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 1 es : ", tablaQuesabe * 1
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 2 es : ", tablaQuesabe * 2
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 3 es : ", tablaQuesabe * 3
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 4 es : ", tablaQuesabe * 4
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 5 es : ", tablaQuesabe * 5
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 6 es : ", tablaQuesabe * 6
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 7 es : ", tablaQuesabe * 7
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 8 es : ", tablaQuesabe * 8
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 9 es : ", tablaQuesabe * 9
		Escribir  "La tabla del ", tablaQuesabe, + " multiplicado por 10 es : ", tablaQuesabe * 10
	SiNo
		Escribir "La persona no sabe multiplicar"
	Fin Si
FinAlgoritmo
