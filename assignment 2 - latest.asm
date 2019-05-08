.model small
.stack 100h
.data
;user prompt print
STRING DB 'ENTER THREE INITIALS: $'

.code
main proc
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING
    MOV AH, 09H
    INT 21h
    
    ;Input start
    MOV AH, 1
    
    ;input 1st char
    INT 21h
    MOV BL, AL
    ;input 2nd char
    INT 21h
    MOV BH, AL
    ;input 3rd char
    INT 21h
    MOV CL, AL
    
    
    ;Output start
    MOV AH, 2
    
    ;new line and carriage return
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    ;print 1st char
    MOV DL, BL
    INT 21h
    
    ;new line and carriage return
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    ;print 2nd char
    MOV DL, BH
    INT 21h
    
    ;new line and carriage return
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    ;print 3rd char
    MOV DL, CL
    INT 21h
end main