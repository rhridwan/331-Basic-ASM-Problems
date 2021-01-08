.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
  
    XOR AL, AAH  ; change the evenly indexed bits of AL
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN
