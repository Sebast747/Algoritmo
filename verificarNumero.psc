Algoritmo verificarNumero
	// decidir un numero
    Definir num Como Entero
    
    // verificacion de numero si es positivo mayor a 0
    Escribir "Ingresa un n�mero: "
    Leer num
    
    // Verificacion de numero si es negativo menor a 0
    Si num > 0 Entonces
        Escribir "El n�mero es positivo"
    Sino
        Si num < 0 Entonces
            Escribir "El n�mero es negativo"
        Sino
            Escribir "El n�mero es cero"
        FinSi
    FinSi
FinAlgoritmo