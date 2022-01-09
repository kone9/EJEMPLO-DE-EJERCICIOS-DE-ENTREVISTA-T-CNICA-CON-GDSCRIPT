extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(_max(800,50))
	print(max_de_tres(20,110,90))
	print(is_vocal('a'))
	print(suma([1,2,3,4]))
	print(mult([1,2,3,4]))
	print(inversa("estoy probando"))
	print(es_palindromo("radar"))
	print(superposicion([1,2,3,4],[5,6,7,7]))
	print(generar_n_caracteres(10, "X"))
	procedimiento( [5,8,15] )




"""
1- Definir una función max() que tome como argumento dos números y 
devuelva el mayor de ellos. 
(Es cierto que python tiene una función max() incorporada, 
pero hacerla nosotros mismos es un muy buen ejercicio.
"""

func _max(a:int,b:int) -> int:
	var valorMasalto : int = 0
	if a > b:
		valorMasalto = a
	else:
		valorMasalto = b
	return valorMasalto

"""
2- Definir una función max_de_tres(), que tome tres números como argumentos 
y devuelva el mayor de ellos.
"""

func max_de_tres(a:int,b:int,c:int):
	var valorMasalto : int = 0
	var valor_entre_a_b = _max(a,b)
	if c > valor_entre_a_b:
		valorMasalto = c
	else:
		valorMasalto = valor_entre_a_b
	return valorMasalto




"""
4- Escribir una función que tome un carácter y devuelva True si es una vocal, de lo contrario devuelve False.
"""
func is_vocal(caracter : String) -> bool:
	var valor_retorno : bool = false
	var vocal : Array = ['a','e','i','o','u'] 
	for i in caracter:
		for j in vocal:
			if i == j:
				valor_retorno = true
	return valor_retorno


"""
5- Escribir una función sum() y una función multip() que sumen y multipliquen respectivamente todos los números de una lista. Por ejemplo: sum([1,2,3,4]) debería devolver 10 y multip([1,2,3,4]) debería devolver 24.
"""
func suma(Lista_numeros : Array) -> int:
	var valor_retorno : int = 0
	for i in Lista_numeros:
		valor_retorno += i
	return valor_retorno
	
func mult(Lista_numeros : Array) -> int:
	var valor_retorno : int = 1
	var i : int = 1
	while i in range(1,len(Lista_numeros)):
		valor_retorno = valor_retorno * Lista_numeros[i]
		i +=1
	return valor_retorno

"""
6- Definir una función inversa() que calcule la inversión de una cadena. Por ejemplo la cadena "estoy probando" debería devolver la cadena "odnaborp yotse"
"""

func inversa(cadena : String) -> String:
	var valorRetorno : String = ""
	var longitud : int = len(cadena) -1
	for i in range(longitud,-1,-1 ):
		var n : int = abs(i)
		valorRetorno += cadena[n]
	return valorRetorno
	
"""
7 - Definir una función es_palindromo() que reconoce palíndromos (es decir, palabras que tienen el mismo aspecto escritas invertidas), ejemplo: es_palindromo ("radar") tendría que devolver True.
"""
func es_palindromo(texto : String) -> bool:
	var valor_retorno : bool = false
	var texto_al_reves : String = inversa(texto)
	if texto_al_reves == texto:
		valor_retorno = true
	
	return valor_retorno

"""
8- Definir una función superposicion() que tome dos listas y devuelva True si tienen al menos 1 miembro en común o devuelva False de lo contrario. Escribir la función usando el bucle for anidado.
"""

func superposicion(lista1 : Array, lista2 : Array) -> bool:
	var valor_de_retorno : bool = false
	for i in lista1:
		for j in lista2:
			if i == j:
				valor_de_retorno = true
	return valor_de_retorno

"""
9- Definir una función generar_n_caracteres() que tome un entero n y devuelva el caracter multiplicado por n. Por ejemplo: generar_n_caracteres(5, "x") debería devolver "xxxxx".
"""

func generar_n_caracteres(cantidad : int, caracter : String) -> String:
	var valor_de_retorno : String = ""
	for i in cantidad:
		valor_de_retorno += caracter
	return valor_de_retorno
	
"""
10- Definir un histograma procedimiento() que tome una lista de números enteros e imprima un histograma en la pantalla. Ejemplo: procedimiento([4, 9, 7]) debería imprimir lo siguiente:
****
*********
*******
"""
func procedimiento(numeros : Array) -> void:
	for i in numeros:
		print( generar_n_caracteres(i, "*") )
#	var i = 0
#	while i < numeros.size():
#		print( generar_n_caracteres(numeros[i], "*") )
#		i += 1
