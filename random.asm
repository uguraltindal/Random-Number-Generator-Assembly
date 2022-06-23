myds 	SEGMENT PARA 'veri'
m DW 8191
a DW 884
c DW 1
random DB ?
myds	ENDS
myss	SEGMENT PARA STACK 'yigin'
		DW 20 DUP(?)
myss	ENDS

mycs	SEGMENT PARA 'kod'
	ASSUME CS:mycs, DS:myds, SS:myss

MAIN 	PROC FAR
	
		PUSH DS			
		XOR AX,AX
		PUSH AX		
		MOV AX,myds	
		MOV DS,AX	
		
		LEA SI, 023H    ;; OFFSET 
		MOV WORD PTR [SI],0015h   ;; deneme için tanımladım 0015h olarak SI adresinin gösterdiği yere atar
		
		MOV BX,[SI] ; 23 h adresindeki değeri BX'e atadık. 0023h
		MOV AX, a ; a değerini AX'e atadık mul yapıcaz. 
		MUL BX ; ax ile bx'i çarptık cevap DX:AX'te
		
		ADD AX, c ; ile topladık 
		
		DIV m ; mod değerine böldük.Kalan DX'te DX:AX böldük çünkü
		
		MOV AX,DX  ;; Kalan dx'de oluşmuştu. DX'i AX'e atadık.DX'i 0ladık
		XOR DX,DX  ; 256'ya böleceğimiz için DX:AX kullanılacak / word tipi olacak
				   ; Bu yüzden DX'i 0'ladık.
		;; Elimizde şuan sadece değerimiz var şimdi 0-255 arası elde etmek için
		DIV 256	   ; 256'ya böldüğümüz için DX:AX'i böldü.Kalan DX'te oluştu. 	 
		; kalan DX'te DH-DL olarak oluştu.256'dan küçük olacağı için sonucumuz RANDOM içerisinde
		MOV random, DL ; Kalan dx'te olduğu için ve 256'tan küçük olduğu için random'a DL atadık.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		RETF

MAIN ENDP
mycs ENDS
	END MAIN