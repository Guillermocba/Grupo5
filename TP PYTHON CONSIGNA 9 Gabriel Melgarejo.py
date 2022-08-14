#Creamos la tupla
Historial5 =(8520, 9510, 7530, 3570, 1590)
#Definimos nuestra funcion maximo
def maximo(lista):
    maximo=0
#Calculamos el maximo valor
    for i in lista:
        if i> maximo:
            maximo= i
#Devolvemos el maximo valor
    return print("El valor maximo de atencion gastado en Toto es de pesos: ", maximo)
#Inicializamos nuestra funcion pasandole como argumento la tupla "Historial5"
maximo(Historial5)
