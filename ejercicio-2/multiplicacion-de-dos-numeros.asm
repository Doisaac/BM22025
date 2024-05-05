section .data
	mensaje dw "El resultado de 2*2 es: ", 0
	mensajeLength equ $-mensaje
	saltoDeLinea db 10
	
section .bss
	resultado resb 1
	
section .text
    	global _start

_start:

	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, mensaje 	; Pointer al mensaje
    	mov edx, mensajeLength  ; Número de bytes para el output
    	int 80h          	; Llama al sistema
    	
	mov al, 2		; Guarda el número 2
	mov cl, 2		; Guarda el número 2 
	mul cl 			; Multiplica implícitamente 

	add al, 48		; Convierte a ASCII
	mov [resultado], al	; Mueve el valor de al a resultado
	
	mov eax, 4		; SYS_WRITE
	mov ebx, 1		; stdout
	mov ecx, resultado	; Pointer a resultado
	mov edx, 1		; Número de bytes para el output
	int 80h			; LLama al sistema

	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, saltoDeLinea 	; Pointer al salto de linea
    	mov edx, 2      	; Número de bytes para el output
    	int 80h          	; Llama al sistema
    	
	mov eax, 1       	; SYS_EXIT
    	mov ebx, 0    	        ; Retorna 0 sin errores
    	int 80h         	; Llama al sistema
