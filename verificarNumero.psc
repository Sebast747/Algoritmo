Algoritmo verificarNumero
	// decidir un numero
    Definir num Como Entero
    
    // verificacion de numero si es positivo mayor a 0
    Escribir "Ingresa un número: "
    Leer num
    
    // Verificacion de numero si es negativo menor a 0
    Si num > 0 Entonces
        Escribir "El número es positivo"
    Sino
        Si num < 0 Entonces
            Escribir "El número es negativo"
        Sino
            Escribir "El número es cero"
        FinSi
    FinSi
FinAlgoritmo