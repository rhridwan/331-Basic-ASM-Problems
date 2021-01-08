
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

L0:

NOP

L1:

MOV AX, 0000H
MOV DS, AX      ; set segment to 0000    
MOV BX, 0000H   ; set offset to 0000 
MOV DL, BYTE PTR DS:[BX]   ; move the value at first location

L2:

MOV BX, 0001H   ; set offset to 0001
ADD DL, BYTE PTR DS:[BX]   ; move the value at second location

L3:
   
MOV BX, 0002h   ; set offset to 0002 
ADD DL, BYTE PTR DS:[BX] 

L4:

MOV AL, DL
MOV DX, 0F0FFH
OUT DX, AL

L5:
HLT



ret




