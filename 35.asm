.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC 
     
    MOV CX, 00000h
    MOV DS, CX   
    MOV BX, 00000h  
    MOV BYTE PTR [BX], 5h
    MOV BX, 00001h
    MOV BYTE PTR [BX], 4h
    MOV BX, 00002h
    MOV BYTE PTR [BX], 3h
    
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
    JL @SMALLER1 ; jump if first is less than second
    
    CMP AH, CL
    JL @SSM  ; second is the smallest  
    
    MOV DL, CL  ; third is the smallest
    JMP @END
    
    @SMALLER1:
        CMP AL, CL
        JL @FSM  ; first is the smallest
        
        MOV DL, CL  ; third is the smallest
        JMP @END
    
    @FSM:
        MOV DL, AL
        JMP @END  
    @SSM:
        MOV DL, AH                                                               
    
    @END:
        MOV AH, 4CH ; return control to DOS
        INT 21H
    
MAIN ENDP
END MAIN

