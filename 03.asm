
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

L0:

NOP

L1:

MOV AX,0F000H
MOV DS,AX
MOV BX,0FFFFH
MOV CL,BYTE PTR DS:[BX]

l2:

MOV AX,0000H
MOV DS,AX
MOV BX,0000H
MOV CH,BYTE PTR DS:[BX] 

L3:

ADD CL,CH

L4:

MOV AL,CL

OUT 0FEH,AL 
;SAVE ADDED VALUE TO LAST EVEN MEMORY LOCATION OF A FIX PORT ADDRESS

ret




