.MODEL SMALL
.STACK 100H

.DATA
    msg1 DB 'greater than 9$'
    msg2 DB 'not greater than 9$'
       
.CODE
MAIN PROC
    
    MOV CH, 017h ; load demo data into AL
    
    SHR CH, 4  ; push the lower nibble out, now higher nibble is the lower nibble
        
    CMP CH, 9
    
    JG @GREATER    ; the number is greater than 9
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, msg2
    INT 21h
    JMP @END
    
    @GREATER:
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 9
        LEA DX, msg1
        INT 21h
    
    @END:    
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN