.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
   ROL AL, 4   ; rotate the string four times to exchange the nibbles
        
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

