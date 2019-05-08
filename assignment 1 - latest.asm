.model small
.stack 100h
.data
;string for results
STRING1 DB 'THE SUM OF $'
STRING2 DB ' AND $'
STRING3 DB ' IS $'

.code
main proc
    ;print question mark
    MOV CX, 1d
    MOV AH, 2
    MOV DL, '?'
    INT 21h
    
    ;input 1 number
    MOV AH, 1
    INT 21h
    MOV BL, AL
    
    ;input another number
    INT 21h
    MOV BH, AL
    
    
    ;Output start
    MOV AH, 2
    ;new line and carriage return
    MOV DL, 10
    INT 21h
    MOV DL, 13
    INT 21h
    
    ;print 1st string
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING1
    MOV AH, 09H
    INT 21h

    ;reset AH for output
    MOV AH, 2    
    ;print 1st number
    MOV DL, BL
    INT 21h
    ;print 2nd string
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING2
    MOV AH, 09H
    INT 21h
    
    ;reset AH for output
    MOV AH, 2
    ;print 2nd number
    MOV DL, BH
    INT 21h
    ;print 3rd string
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, STRING3
    MOV AH, 09H
    INT 21h
    
    ;reset AH for output
    MOV AH, 2
    ;covert decimal
    SUB BL, 30h
    SUB BH, 30h
    ADD BL, BH ;add two numbers
    ADD BL, 30h ;convert hexa again
    
    ;print result
    MOV DL, BL
    INT 21h   
end main