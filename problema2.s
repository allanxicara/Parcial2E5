		AREA	codigo, CODE, READONLY, ALIGN=2
		THUMB
		EXPORT Start

R5mayor
	MOV R9, R6
	B	siguiente
	
R7mayor
	MOV R10, R8
	B	comparacion1
	
intMeCpcero
	MOV R11,R6
	;Mueve la cantidad de cada bicicleta a los registros correspondientes.
	MOV R3, #0
	MOV R4, R9
	B	comparacion2
	
intYCpceroMeCmcero
	MOV R11, R7
	;Mueve la cantidad de cada bicicleta a los registros correspondientes.
	MOV	R3, R10
	MOV R4, #0
	B	finalizar
	
Start

	;;;;;;;;;;;;;;;;;;;;;;;INGRESE LA CANTIDAD DE HIERRO Y ALUMINIO A UTILIZAR;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;VALORES EN KILOGRAMOS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	MOV R1, #80				;HIERRO
	MOV R2, #120			;ALUMINIO
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;NOTA: LOS VALORES DEL PESO DEBEN SUMAR AL MENOS 200 KG ENTRE AMBOS;;;;;;;;;;;;;
	
	
	;Como el problema lo indica se representa como X la cantidad de hierro y Y la cantidad de aluminio
	;(Y-X)/2
	CMP R2, R1					;Verifica que la cantidad de bicicletas no quede negativo
	BHI positivo1
	MOV R3, #0
	MOV R4, #0
	B	continuar
positivo1	
	SUB	R3, R2, R1				
	MOV R0, #2
	SDIV R3, R3, R0
	
	;(3X-Y)/4
interseccion2	
	MOV R0, #3
	MUL	R4, R1, R0
	CMP R4, R2					;Verifica que la cantidad de bicicletas no quede negativo
	BHI positivo2
	MOV R3, #0
	MOV R4, #0
	B continuar
positivo2	
	SUB R4, R4, R2
	MOV R0, #4
	SDIV R4, R4, R0

continuar
	;X/2
	MOV R0, #2
	SDIV R5, R1, R0
	
	;Y/2
	MOV R0, #2
	SDIV R6, R2, R0
	
	;X
	MOV R7, R1
	
	;Y/3
	MOV R0, #3
	SDIV R8, R2, R0
	
	;Compara cual intercepto es menor
	CMP R5, R6
	BHS R5mayor
	MOV R9, R5
	
siguiente
	;Compara cual intercepto es menor
	CMP R7, R8
	BHS R7mayor
	MOV R10, R7

comparacion1

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ZONA DE CONFIGURACIÓN;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;SI SE DESEA CAMBIAR LOS PRECIOS DE CADA BICICLETA;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	MOV R0, #10000	;BICICLETA DE PASEO
	MUL R5, R3, R0
	MOV R0, #5000	;BICICLETA DE MONTAÑA
	MUL R6, R4, R0
	ADD	R5, R5, R6
	
	MOV R0, #5000	;BIBICLETA DE MONTAÑA
	MUL R6, R9, R0
	
	MOV R0, #10000	;BICICLETA DE PASEO
	MUL R7, R10, R0
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;Compara si el valor de la funcion en el intercepto es menor que cuando la cantidad de bicicletas de paseo es cero
	CMP	R5, R6
	BLO intMeCpcero
	MOV R11, R5
	
	;Compara si el valor de la funcion en el intercepto y cuando la bicicletas de paseo es cero es menor que cuando las bicicletas de montaña son cero
comparacion2
	CMP R11, R7
	BLO intYCpceroMeCmcero
	
finalizar
	;Coloca el maximo en el registro R0
	MOV R0, R11
	NOP
	
	ALIGN
	END
