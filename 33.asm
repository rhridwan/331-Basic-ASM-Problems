.MODEL SMALL
.STACK 100H


.DATA
    msg1 DB 'Auxilary carry exists$'
    msg2 DB 'No Auxilary Carry$'
    
.CODE
MAIN PROC 
     
    MOV AL, 88h 
    MOV AH, 0Ch ; loading demo data
    
    MOV DL, AL  ; copy the data of AL to DL
    MOV CL, AH  ; copy the data of AH to DL
    
    SHL DL, 4 
    SHL CL, 4   ; move the lower nibble to higher nibble
    
    ADD CL, DL
    
    JC  @OVERFLOW   ; auxilary carry exists
    
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 9
    LEA DX, msg2
    INT 21H
    JMP @END
    
    @OVERFLOW:
        MOV AX, @DATA
        MOV DS, AX
        MOV AH, 9
        LEA DX, msg1
        INT 21H
        
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN
