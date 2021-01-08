
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
L0:
NOP

L1:

MOV CX, 0000h
MOV DS, CX      ; set segment to 0000
MOV BX, 0000h  ; set offset to 0000 
MOV DL, BYTE PTR DS:[BX]   ; move the value at the first location to DL

L2:

MOV CX,0000H
MOV DS,CX    
MOV BX, 0001h  ; set offset to FFFF
MOV DH, BYTE PTR [BX]   ; adds the data from the last and first memory location

L3:
                                                             
CMP DL, DH

L4:    
JA L5 ; jump if DL is greater
    
MOV AL, DH  
OUT 00h, AL
JMP L6
    
L5:
    MOV AL, DL
    OUT 00h, AL                                                               
    
L6:HLT

ret




