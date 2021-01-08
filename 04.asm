
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

L0:

NOP

L1:

MOV DX,0FFFFH
IN AL,DX
MOV CL,AL

L2:

MOV DX,0000H
IN AL,DX
MOV CH,AL

L3:

ADD AL,AH 

L4:

OUT 0FFH,AL



ret
