org 100h

L0:
NOP
L1:
MOV AX, 0F000h
MOV DS, AX      ; set segment to 0000    
MOV BX, 0FFFFh  ; set offset to 0000 
MOV DL, BYTE PTR DS:[BX]   ; move the value at the first location to DL

L2:
    
MOV AX, 0000h
MOV DS, AX;     ; set segment to F000    
MOV BX, 0000h  ; set offset to FFFF
MOV DH, BYTE PTR DS:[BX]   ; adds the data from the last and first memory location

L3:

ADD DL,DH

L4:
                                                        
CMP DL, 5
JLE  L6   ; don't store the result if the result is not greater than 5

L5:
MOV AX,0F000h
MOV DS,AX                                                                 
MOV BX, 0FFFEh  ; set offset to FFFE (last even location)
MOV BYTE PTR DS:[BX], DL   ; stores the result into last even location    
    
L6:  HLT




ret