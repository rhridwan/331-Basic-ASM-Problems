.MODEL SMALL
.STACK 100H

.DATA
    msg1 DB 'greater than 9$'
    msg2 DB 'Less than 9$'
       
.CODE
MAIN PROC
    
    
    SHL AL, 4  ; push the higher nibble out
    SHR AL, 4  ; move the lower nibble back to it's position
        
    CMP AL, 9
    
    JG L1    ; the number is greater than 9
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, msg2
    INT 21h
    JMP L2
    
   L1:
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 9
        LEA DX, msg1
        INT 21h
    
    L2:    
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN
