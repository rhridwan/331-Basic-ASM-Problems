.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV BX, 0FFFFh  ; loading demo data
    MOV CX, 0FFFFh
    ADD BX, CX  ; adds the words
                                     
    JC  @OVERFLOW   ; unsigned overflow occured
    
    MOV CX, BX
    JMP @END
    
    @OVERFLOW:
        MOV DX, BX
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN