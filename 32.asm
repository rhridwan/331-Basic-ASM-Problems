.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV BX, 08000h  ; loading demo data
    ADD BX, 0FFFFh  ; adds the words
                                     
    JO  @OVERFLOW   ; signed overflow occured
    
    MOV CX, BX
    JMP @END
    
    @OVERFLOW:
        MOV DX, BX
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN

