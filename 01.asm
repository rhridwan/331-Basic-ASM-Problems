                             
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SAMLL
.STACK 100H

L0: NOP

L1:

MOV AX,0000H ;set segment
MOV DS,AX

MOV BX,0000H ;set offset

MOV CL,BYTE PTR DS:[BX]  ;read data from first memory location


L2:

MOV AX,0F000H
MOV DS,AX

MOV BX,0FFFFH

MOV CH,BYTE PTR DS:[BX]  ;;read data from last memory location


L3:

ADD CL,CH   ;adding

L4:

MOV AX,0F000H
MOV DS,AX
MOV BX,0FFFEH

MOV BYTE PTR DS:[BX],CL 
;store added data in last even memory address

L5: HLT 

ret




