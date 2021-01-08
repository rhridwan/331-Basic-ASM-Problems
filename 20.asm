.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
     
    MOV BL, 0FFh  ; load demo data
    
    XOR BL, 80h  ; change the sign bit of BL
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

