.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
 
    SHL AL, 4  ; multiply with 16
        
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

