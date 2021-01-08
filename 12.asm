.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
    MOV CX, 0FFFFh
    MOV DS, CX;     ; set segment to FFFF
    
    MOV BX, 0000Fh  ; set offset to 000F 
    MOV BL, BYTE PTR [BX]   ; move the value at the last location to DL 
    
    MOV DL, 00H   ; clear the DL register
    MOV CX, 8   ; save loop count
    
    L1:
        ROL BL, 1   ; get MSB into CF
        JNC L2  ; carry is 0
        INC DL      ; carry is 1, increase total
        
    L2:
        LOOP L1
        
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN