.MODEL SMALL
.STACK 100H
.DATA
   STRING1 DB 'Joydip Chowdhury $'
.CODE 
MAIN PROC   
    
   
    
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,STRING1
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN
