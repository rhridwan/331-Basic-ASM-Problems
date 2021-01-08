.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV CX, 0201h   ; loading demo data
    
    MOV BL, CL
    ADD BL, CH
                                     
    JNP  @ODD   ; parity the result has odd number of 1's
    
    MOV DL, BL
    JMP @END
    
    @ODD:
        MOV DH, BL
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN
