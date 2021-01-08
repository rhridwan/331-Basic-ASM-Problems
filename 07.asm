
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

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

SUB DL,DH

L4:

JS  L5   ; the result is negetive
    
MOV AL, DL
MOV DX, 0FFFFh                                                             
OUT DX, AL  ; store the result in the last variable port address
JMP L6

L5:
    MOV AL, DL
    OUT 00h, AL    ; store the result in the first fixed port address
    
L6:HLT 

ret




