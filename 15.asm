.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
    
    MOV AL, -32d ; load demo data into AL
    
    SAR AL, 4  ; devide with 16
        
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

