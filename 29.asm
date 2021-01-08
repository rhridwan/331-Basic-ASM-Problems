.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV CX, 0202h   ; loading demo data
    
    MOV BL, CL
    ADD BL, CH
                                     
    JNZ  @NOTZ   ; the result is zero
    
    MOV DL, BL
    JMP @END
    
    @NOTZ:
        MOV DH, BL
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN