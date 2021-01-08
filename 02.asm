
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

L1:

NOP

L2:

IN AL,00H
MOV CL,AL
IN AL,01H
MOV CH,AL

L3:

ADD CL,CH

L4:
                                                             
MOV AX,0F000H
MOV DS,AX
MOV BX,0FFFFH

MOV BYTE PTR DS:[BX],CL


ret




