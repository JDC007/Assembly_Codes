.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH, 1
    INT 21H
    
    MOV BL,AL
    SUB AL, 48
    
    MOV CX, 0
    MOV CL, AL
    MOV AH, 2
    MOV DL, '*'
    
    TOP:
    INT 21H
    LOOP TOP
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN