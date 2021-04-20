	AREA codigo, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT Start

cambio1
	VMOV.F32	S1, R2
	VMOV.F32	S2, R1
	MOV	R12, #1
	B ordenar2
cambio2
	VMOV.F32	S2, R2
	VMOV.F32	S3, R1
	MOV	R12, #1
	B ordenar3
cambio3
	VMOV.F32	S3, R2
	VMOV.F32	S4, R1
	MOV	R12, #1
	B ordenar4
cambio4
	VMOV.F32	S4, R2
	VMOV.F32	S5, R1
	MOV	R12, #1
	B ordenar5
cambio5
	VMOV.F32	S5, R2
	VMOV.F32	S6, R1
	MOV	R12, #1
	B ordenar6
cambio6
	VMOV.F32	S6, R2
	VMOV.F32	S7, R1
	MOV	R12, #1
	B ordenar7
cambio7
	VMOV.F32	S7, R2
	VMOV.F32	S8, R1
	MOV	R12, #1
	B ordenar8
cambio8
	VMOV.F32	S8, R2
	VMOV.F32	S9, R1
	MOV	R12, #1
	B ordenar9
cambio9
	VMOV.F32	S9, R2
	VMOV.F32	S10, R1
	MOV	R12, #1
	B ordenar10
cambio10
	VMOV.F32	S10, R2
	VMOV.F32	S11, R1
	MOV	R12, #1
	B ordenar11
cambio11
	VMOV.F32	S11, R2
	VMOV.F32	S12, R1
	MOV	R12, #1
	B ordenar12
cambio12
	VMOV.F32	S12, R2
	VMOV.F32	S13, R1
	MOV	R12, #1
	B ordenar13
cambio13
	VMOV.F32	S13, R2
	VMOV.F32	S14, R1
	MOV	R12, #1
	B ordenar14
cambio14
	VMOV.F32	S14, R2
	VMOV.F32	S15, R1
	MOV	R12, #1
	B finalizar

mayoramenor
	VMOV.F32 S0, S1
	VMOV.F32 S1, S15
	VMOV.F32 S15, S0
	
	VMOV.F32 S0, S2
	VMOV.F32 S2, S14
	VMOV.F32 S14, S0
	
	VMOV.F32 S0, S3
	VMOV.F32 S3, S13
	VMOV.F32 S13, S0
	
	VMOV.F32 S0, S4
	VMOV.F32 S4, S12
	VMOV.F32 S12, S0
	
	VMOV.F32 S0, S5
	VMOV.F32 S5, S11
	VMOV.F32 S11, S0
	
	VMOV.F32 S0, S6
	VMOV.F32 S6, S10
	VMOV.F32 S10, S0
	
	VMOV.F32 S0, S7
	VMOV.F32 S7, S9
	VMOV.F32 S9, S0
	B fin
	
	
Start

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;INGRESE LOS NÚMEROS QUE DESEA ORDENAR;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;REEMPLACE LOS NÚMEROS EN ROJO;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	MOV R0, #0x99		;N1
	VMOV.F32 S1, R0
	MOV R0, #0x84		;N2
	VMOV.F32 S2, R0
	MOV R0, #0x26		;N3
	VMOV.F32 S3, R0
	MOV R0, #0x76		;N4
	VMOV.F32 S4, R0
	MOV R0, #0x78		;N5
	VMOV.F32 S5, R0
	MOV R0, #0x8		;N6
	VMOV.F32 S6, R0
	MOV R0, #0x51		;N7
	VMOV.F32 S7, R0
	MOV R0, #0x98		;N8
	VMOV.F32 S8, R0
	MOV R0, #0x12		;N9
	VMOV.F32 S9, R0
	MOV R0, #0x5		;N10
	VMOV.F32 S10, R0
	MOV R0, #0x24		;N11
	VMOV.F32 S11, R0
	MOV R0, #0x68		;N12
	VMOV.F32 S12, R0
	MOV R0, #0x79		;N13
	VMOV.F32 S13, R0
	MOV R0, #0x85		;N14
	VMOV.F32 S14, R0
	MOV R0, #0x96		;N15
	VMOV.F32 S15, R0
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;INGRESE SI QUIERE ASCENDENTE O DESCENDENTE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DESCENDENTE = 1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ASCENDENTE = 0;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	MOV R11, #1
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	
ordenar1
	MOV R12, #0
	VMOV	R1, S1
	VMOV	R2, S2
	CMP	R1, R2
	BHS cambio1
ordenar2
	VMOV	R1, S2
	VMOV	R2, S3
	CMP	R1, R2
	BHS cambio2
ordenar3
	VMOV	R1, S3
	VMOV	R2, S4
	CMP	R1, R2
	BHS cambio3
ordenar4
	VMOV	R1, S4
	VMOV	R2, S5
	CMP	R1, R2
	BHS cambio4
ordenar5
	VMOV	R1, S5
	VMOV	R2, S6
	CMP	R1, R2
	BHS cambio5
ordenar6
	VMOV	R1, S6
	VMOV	R2, S7
	CMP	R1, R2
	BHS cambio6
ordenar7
	VMOV	R1, S7
	VMOV	R2, S8
	CMP	R1, R2
	BHS cambio7
ordenar8
	VMOV	R1, S8
	VMOV	R2, S9
	CMP	R1, R2
	BHS cambio8
ordenar9
	VMOV	R1, S9
	VMOV	R2, S10
	CMP	R1, R2
	BHS cambio9
ordenar10
	VMOV	R1, S10
	VMOV	R2, S11
	CMP	R1, R2
	BHS cambio10
ordenar11
	VMOV	R1, S11
	VMOV	R2, S12
	CMP	R1, R2
	BHS cambio11
ordenar12
	VMOV	R1, S12
	VMOV	R2, S13
	CMP	R1, R2
	BHS cambio12
ordenar13
	VMOV	R1, S13
	VMOV	R2, S14
	CMP	R1, R2
	BHS cambio13
ordenar14
	VMOV	R1, S14
	VMOV	R2, S15
	CMP	R1, R2
	BHS cambio14
finalizar
	CMP R12, #1
	BEQ ordenar1
	CMP R11, #0
	BNE	mayoramenor
fin
	MOV R0, #0x0
	VMOV.F32 S0, R0
	NOP
	
	ALIGN
	END
