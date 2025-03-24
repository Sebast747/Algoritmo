import datetime
import json
import csv

def solicitar_datos():
    nombre_cliente = input("Ingrese el nombre del cliente: ")
    productos = []
    while True:
        nombre_producto = input("Ingrese el nombre del producto: ")
        cantidad = int(input("Ingrese la cantidad del producto: "))
        precio_unitario = float(input("Ingrese el precio unitario del producto: "))
        productos.append({
            "nombre": nombre_producto,
            "cantidad": cantidad,
            "precio_unitario": precio_unitario
        })
        respuesta = input("Desea agregar otro producto? (s/n): ")
        if respuesta.lower() != "s":
            break
    descuento = float(input("Ingrese el descuento (0 si no hay descuento): "))
    return nombre_cliente, productos, descuento

def calcular_subtotal(productos):
    subtotal = 0
    for producto in productos:
        subtotal += producto["cantidad"] * producto["precio_unitario"]
    return subtotal

def calcular_descuento(subtotal, descuento):
    return subtotal * (descuento / 100)

def calcular_impuestos(subtotal, descuento):
    return (subtotal - calcular_descuento(subtotal, descuento)) * 0.16

def calcular_total(subtotal, descuento, impuestos):
    return subtotal - calcular_descuento(subtotal, descuento) + impuestos

def imprimir_factura(nombre_cliente, productos, subtotal, descuento, impuestos, total):
    print("Factura")
    print("--------")
    print(f"Cliente: {nombre_cliente}")
    print("Productos:")
    for producto in productos:
        print(f"- {producto['nombre']}: {producto['cantidad']} x {producto['precio_unitario']}")
    print(f"Subtotal: ${subtotal:.2f}")
    print(f"Descuento: {descuento}%")
    print(f"Impuestos: ${impuestos:.2f}")
    print(f"Total: ${total:.2f}")

def guardar_factura_en_archivo(nombre_cliente, productos, subtotal, descuento, impuestos, total):
    with open("factura.txt", "w") as archivo:
        archivo.write("Factura\n")
        archivo.write("--------\n")
        archivo.write(f"Cliente: {nombre_cliente}\n")
        archivo.write("Productos:\n")
        for producto in productos:
            archivo.write(f"- {producto['nombre']}: {producto['cantidad']} x {producto['precio_unitario']}\n")
        archivo.write(f"Subtotal: ${subtotal:.2f}\n")
        archivo.write(f"Descuento: {descuento}%\n")
        archivo.write(f"Impuestos: ${impuestos:.2f}\n")
        archivo.write(f"Total: ${total:.2f}\n")

def exportar_factura_en_json(nombre_cliente, productos, subtotal, descuento, impuestos, total):
    factura = {
        "cliente": nombre_cliente,
        "productos": productos,
        "subtotal": subtotal,
        "descuento": descuento,
        "impuestos": impuestos,
        "total": total
    }
    with open("factura.json", "w") as archivo:
        json.dump(factura, archivo)

def exportar_factura_en_csv(nombre_cliente, productos, subtotal, descuento, impuestos, total):
    with open("factura.csv", "w", newline="") as archivo:
        escritor = csv.writer(archivo)
        escritor.writerow(["Cliente", nombre_cliente])
        escritor.writerow(["Productos"])
        for producto in productos:
            escritor.writerow([producto["nombre"], producto["cantidad"], producto["precio_unitario"]])
        escritor.writerow(["Subtotal", subtotal])
        escritor.writerow(["Descuento", descuento])
        escritor.writerow(["Impuestos", impuestos])
        escritor.writerow(["Total", total])

def main():
    nombre_cliente, productos, descuento = solicitar_datos()
    subtotal = calcular_subtotal(productos)
    impuestos = calcular_impuestos(subtotal, descuento)
    total = calcular_total(subtotal, descuento, impuestos)
    imprimir_factura(nombre_cliente, productos, subtotal, descuento, impuestos, total)
    guardar_factura_en_archivo(nombre_cliente, productos, subtotal, descuento, impuestos, total)
    exportar_factura_en_json(nombre_cliente, productos, subtotal, descuento, impuestos, total)
    exportar_factura_en_csv(nombre_cliente, productos, subtotal, descuento, impuestos, total)

if __name__ == "__main__":
    main()
