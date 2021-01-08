.MODEL SMALL
.STACK 100H

.DATA
    n DB 'number is negative$'
    p DB 'number is positive$'
    
.CODE
MAIN PROC
    MOV CX, 0000h
    MOV DS, CX;     ; set segment to 0000
    
    MOV BX, 0000h  ; set offset to 0000 
    MOV AL, BYTE PTR [BX]   ; move the value at the last location to DL 

    
    TEST AL, 80h
    JNZ L0  ; the signed bit is set
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, p ; load and display positive
    MOV AH, 9
    INT 21H     
    JMP end
    
    L0:
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, n ; load and display negative
        MOV AH, 9
        INT 21H
    
    end:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN