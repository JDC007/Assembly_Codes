.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH, 1
    INT 21H   ;INPUT
    MOV BL, AL      
    
    MOV AH, 2
    MOV DL, 0AH  ; NEW LINE
    INT 21H
    MOV DL, 0DH  ;CARRETURN
    INT 21H
    
    MOV AH, 2
    MOV DL, BL ;OUTPUT
    INT 21H       
    
    EXIT :     
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN