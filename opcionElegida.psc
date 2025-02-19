Algoritmo opcionElegida
    Definir numero, a, b Como Entero
	
    Escribir "Elige la opción para operar: "
    Escribir "1. Suma"
    Escribir "2. Resta"
    Escribir "3. Multiplicación"
    Escribir "4. División"
    Leer numero
	
    Escribir "Ingresa el primer número: "
    Leer a
    Escribir "Ingresa el segundo número: "
    Leer b
	
    Segun numero Hacer
        1:
            Escribir "Resultado: ", a + b
        2:
            Escribir "Resultado: ", a - b
        3:
            Escribir "Resultado: ", a * b
        4:
            Si b <> 0 Entonces
                Escribir "Resultado: ", a / b
            Sino
                Escribir "Error: División por cero no permitida"
            FinSi
        De Otro Modo:
            Escribir "No es una opción válida"
    Fin Segun
FinAlgoritmo