.MODEL SMALL
.STACK 100H
.DATA
   STRING1 DB 'ENTER THREE NUMBERS $'
.CODE
MAIN PROC
        

    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,STRING1
    MOV AH,9       ;INITIALIZE DATA
    INT 21H
    
    MOV AH, 2
    MOV DL, 10
    INT 21H      ;NEW LINE
    MOV DL, 13
    INT 21H 
    
    MOV AH, 1
    INT 21H    ;1ST INPUT  ;Joydip Chowdhury
    MOV BL,AL              ;1512033042
    
    MOV AH, 2
    MOV DL, 10 ;NEW LINE
    INT 21H
    MOV DL, 13
    INT 21H
            
    MOV AH,1
    INT 21H    ;2ND INPUT
    MOV BH,AL      
    
    MOV AH, 2
    MOV DL, 10 ;NEW LINE
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV AH,1
    INT 21H   ;3RD INPUT
    MOV CL,AL
    
    MOV AH, 2
    MOV DL, 0AH  ; NEW LINE
    INT 21H
    MOV DL, 0DH  ;CARRETURN
    INT 21H
    
    CMP BL,BH
    JL LA1
    JMP LA2
    
    LA1: CMP BL,CL
         JL LB1
         JMP LB3
    
    LA2: CMP BH,CL
         JL LB2
         JMP LB3
         
         
    LB1: MOV AH,2
         MOV DL,BL
         INT 21H
         JMP EXIT
    
    LB2: MOV AH, 2
         MOV DL, BH
         INT 21H
         JMP EXIT
         
        
    LB3: MOV AH,2
         MOV DL,CL
         INT 21H
         JMP EXIT
         
    
    
    EXIT:
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN

