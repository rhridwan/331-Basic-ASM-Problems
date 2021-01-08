.MODEL SMALL
.STACK 100H

.DATA
    prompt DB 'Enter a number between 0-9 :$'
    C DB  ?

.CODE
MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, prompt  ; display the prompt
    INT 21h

    MOV AH, 1
    INT 21h         ; read a character

    MOV C, AL
    AND C, 0FH     ; converts to numerical value

    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H

    MOV AH,2
    MOV DL,C
    INT 21H


    MOV AH, 4CH ; return control to DOS
    INT 21H

MAIN ENDP
END MAIN