.STACK 100H

.DATA
    odd DB 'The number is odd$'
    even DB 'The number is even$'
    
.CODE
MAIN PROC
    MOV CX, 0000h
    MOV DS, CX;     ; set segment to 0000
    
    MOV BX, 0000h  ; set offset to 0000 
    MOV CL, BYTE PTR [BX]   ; move the value to CL 
    
    TEST CL, 01h
                                     
    JNZ ODD   ; the result is negetive (lowest bit is set)
    
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, even ; load and display even
    MOV AH, 9
    INT 21H     
    JMP END
    
    ODD:
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, odd ; load and display odd
        MOV AH, 9
        INT 21H
    
    END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN