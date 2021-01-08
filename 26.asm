.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
     
    MOV CL, 000h  ; load demo data
    
    OR CL, 0AAh  ; clear the evenly indexed bits of AL
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

