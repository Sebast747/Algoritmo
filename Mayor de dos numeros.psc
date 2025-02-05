Algorithm LargestOfTwoNumbers
// Ask the user to enter the first number
Escribir  "Enter the first number:"
// Read the first number and store it in the variable num1
Leer num1
// Ask the user to enter the second number
Escribir "Enter the second number:"
// Read the second number and store it in the variable num2
Leer num2
// Compare the first number with the second number
Si num1 > num2 Then
// If the first number is greater, display that num1 is the largest
Escribir  "The largest number is: ", num1
SiNo
// If num1 is not greater, check if num2 is greater
Si num2 > num1 Then
// If the second number is greater, display that num2 is the largest
Escribir  "The largest number is: ", num2
else
// If neither num1 nor num2 is greater, they must be equal
Escribir  "Both numbers are equal."
FinSi
FinSi
FinAlgoritmo