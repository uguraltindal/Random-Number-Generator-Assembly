datasg SEGMENT PARA 'veri'
a	db 12
b	db 15
c	db 13
tip db (?)
datasg ENDS

stacksg SEGMENT PARA STACK 'yigin'

	DW 15 DUP(?)
stacksg	ENDS

codesg	SEGMENT PARA 'kod'

	assume DS:datasg, CS:codesg, SS:stacksg
	
ANA		PROC FAR
	
		PUSH DS			; geri dönüş değerinin ayarlanması 
		XOR AX,AX
		PUSH AX		
		MOV AX,datasg	; data segment değerinin tanımlanması
		MOV DS,AX		; bu 5'li her exe tipi kodda vardır.

		MOV AL,a
		MOV BL,b
		MOV CL,c
		
		CMP AL,BL
		JE J1
		CMP AL, CL
		JE J2
		CMP BL, CL
		JE J2
		MOV tip,3
		JMP SON
	J1: CMP AL, CL
		JNE J2
		MOV tip,1
		JMP SON
	J2:	MOV tip,2
	SON:RETF
ANA ENDP
		
codesg ENDS
	END ANA
	
		
		
		