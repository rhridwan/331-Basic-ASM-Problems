.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC 
    
    MOV CX, 00000h
    MOV DS, CX;     ; set segment to 0000
    
    MOV BX, 00000h  ; set offset to 0000 
    MOV AL, BYTE PTR DS:[BX]   ; move the value at the last location to DL 
    
    MOV DL, AL  ; save the number into DL
    
    MOV CX, 8   ; save the loop count
    
    L0:
        SHL AL, 1   ; get MSB into CF
        RCR BL, 1   ; rotate it into BL
        LOOP L0
        
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP