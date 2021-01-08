.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV CX, 00000h
    MOV DS, CX   
    MOV BX, 00000h  
    MOV BYTE PTR [BX], 5h
    MOV BX, 00001h
    MOV BYTE PTR [BX], 6h
    MOV BX, 00002h
    MOV BYTE PTR [BX], 7h
    
    ;; loading demo data ends ;; 
    
    MOV CX, 00000h
    MOV DS, CX      ; set segment to 0000
    
    MOV BX, 00000h  ; set offset to 0000 
    MOV AL, BYTE PTR [BX]   ; move the value at the first location to AL
    MOV BX, 00001h  ; set offset to FFFF
    MOV AH, BYTE PTR [BX]   ; move the value at the second location to AH
    MOV BX, 00002h  ; set offset to FFFF
    MOV CL, BYTE PTR [BX]   ; move the value at the third location to CL
                                                             
    CMP AL, AH
    JG @GREATER1 ; jump if first is greater than second
    
    CMP AH, CL
    JG @SG  ; second is the greatest  
    
    MOV DL, CL  ; third is the greatest
    JMP @END
    
    @GREATER1:
        CMP AL, CL
        JG @FG  ; first is the greatest
        
        MOV DL, CL  ; third is the greatest
        JMP @END
    
    @FG:
        MOV DL, AL
        JMP @END  
    @SG:
        MOV DL, AH                                                               
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN

