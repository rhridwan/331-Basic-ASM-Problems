.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
    
    XOR CL, CL  ; clear the CL register
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

