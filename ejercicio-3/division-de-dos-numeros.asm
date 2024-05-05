section .data
	mensaje dw "El resultado de 8 / 2 es: ", 0
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
	
	mov eax, 8		; Guarda el 8 (dividiendo)
	mov ebx, 2		; Guarda el número 2 (divisor)
	mov edx, 0		; Residuo
	div bx 			; Divide implícitamente 

	add eax, 48		; Convierte a ASCII
	mov [resultado], eax 	; Mueve el valor de eax a resultado
	
	mov eax, 4		; SYS_WRITE
	mov ebx, 1		; stdout
	mov ecx, resultado	; Pointer a resultado
	mov edx, 1		; Número de bytes para el output
	int 80h			; LLama al sistema

	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, saltoDeLinea 	; Pointer al salto de linea
    	mov edx, 2      	; Número de bytes para el output
    	int 80h          	; llama al sistema
    	
	mov eax, 1       	; SYS_EXIT
    	mov ebx, 0    	        ; Retorna 0 sin errores
    	int 80h         	; Llama al sistema
