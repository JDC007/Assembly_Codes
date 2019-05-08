.model small
.stack 100h
.data
.code
MAIN PROC
    
    MOV AH, 2  ;ID: 1512-0330-42
    
    MOV CX, 3    ;PRINT 3 *
    MOV DL, 42 
    
    LOOP1:
        INT 21H          ;Joydip Chowdhury
        LOOP LOOP1       ;1512033042
    
    MOV DL, 10
    INT 21H    ;NEW LINE 
    MOV DL, 13
    INT 21H
    
    
    
    MOV CX, 3
    MOV DL, 42 
    
    LOOP2:
        INT 21h
        LOOP LOOP2
    
    
    MOV DL, 10
    INT 21H   ;NEW LINE
    MOV DL, 13
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN