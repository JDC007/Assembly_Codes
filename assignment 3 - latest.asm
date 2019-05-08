.model small
.stack 100h
.data
;string for results
STRING1 DB 'ENTER A HEX DIGIT: $'
STRING2 DB 'IN DECIMAL IT IS $'

.code
main proc
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING1
    MOV AH, 09H
    INT 21h
    
    ;Input start
    MOV AH, 1
    
    ;input hex number
    INT 21h
    MOV BL, AL
    
    ;convert
    MOV BH, 31h
    SUB BL, 11h
    
    ;Output start
    MOV AH, 2
    ;new line and carriage return
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING2
    MOV AH, 09H
    INT 21h
    ;Output start
    MOV AH, 2
    ;print result
    MOV DL, BH
    INT 21h
    MOV DL, BL
    INT 21h   
end main