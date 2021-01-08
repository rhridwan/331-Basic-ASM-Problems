.MODEL SMALL
.STACK 100H

.DATA
    msg1 DB 'equal$'
    msg2 DB 'not equal$'
       
.CODE
MAIN PROC
    
    ;MOV AL, 0BBh ; load demo data into AL
    
    MOV DL, AL  ; make a copy of AL
    
    SHL AL, 4  ; push the higher nibble out of AL
    SHR AL, 4  ; move the lower nibble of AL back to it's position 
    
    SHR DL, 4  ; push the lower nibble out of DL and move the higher nibble to lower nibble
        
    CMP AL, DL
    
    JNE L1    ; the lower nibble is not equal to higher nibble
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, msg1
    INT 21h
    JMP END
    
    L1:
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 9
        LEA DX, msg2
        INT 21h
    
    END:    
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN