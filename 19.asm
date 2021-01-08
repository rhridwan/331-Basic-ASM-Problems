.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
     
    AND CL, 0FEh  ; clear the lsb of BL register
    AND CL, 07Fh  ; clear the msb of BL register
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

