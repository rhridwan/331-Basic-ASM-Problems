.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
     
    MOV BL, 00h  ; load demo data
    
    OR BL, 01h  ; set the lsb of BL register
    OR BL, 80h  ; set the msb of BL register
                                     
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

