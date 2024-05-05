section .data
	mensaje dw "El resultado de 9-2-1 es: ", 0
	mensajeLength equ $-mensaje
	saltoDeLinea db 10
	resultado db "0"
	
section .bss

section .text
    global _start

_start:

	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, mensaje 	; Pointer al mensaje
    	mov edx, mensajeLength  ; Número de bytes para el output
    	int 80h          	; Llama al sistema
    	
	mov ax, 9		; Mueve el número 9 a registro AX
    	mov bx, 2		; Mueve el número 2 a registro BX
    	sub ax, bx       	; Resta ax - bx

    	mov bx, 1        	; Mueve el número 1 a registro BX
    	sub ax, bx       	; Resta ax - bx
    	
	add ax, 48       	; Convierte el resultado a ASCII
    	mov [resultado], ax     ; Guarda el resultado de la resta en registro AX
    	
    	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, resultado 	; Pointer al resultado
    	mov edx, 1       	; Número de bytes para el output
    	int 80h          	; llama al sistema
    	
    	mov eax, 4       	; SYS_WRITE 
    	mov ebx, 1       	; stdout
    	mov ecx, saltoDeLinea 	; Pointer al salto de linea
    	mov edx, 1  		; Número de bytes para el output
    	int 80h          	; Llama al sistema
    	
    	mov eax, 1       	; SYS_EXIT
    	mov ebx, 0    	        ; Retorna 0 sin errores
    	int 80h         	; Llama al sistema
		
