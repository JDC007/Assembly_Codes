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
    INT 21H    ;1ST INPUT
    MOV BL,AL
    
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
    INT 21H
    MOV CL,AL
    
    MOV AH, 2
    MOV DL, 10 ;NEW LINE
    INT 21H
    MOV DL, 13
    INT 21H
    
    CMP BL,BH
    JL LA1
    JMP LA2
    
    LA1: CMP BL,CL
         JL LA2
         JMP LB1
    
    LA2: MOV AH, 2
         MOV DL, 10 ;NEW LINE
         INT 21H
         MOV DL, 13
         INT 21H
                   
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    
    LB1: CMP BH,CL
         JL LA2
         JMP LB2  
        
    LB2: MOV AH, 2
         MOV DL, 10 ;NEW LINE
         INT 21H
         MOV DL, 13
         INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
  
    
    LC1: MOV AH, 2
         MOV DL, 10 ;NEW LINE
         INT 21H
         MOV DL, 13
         INT 21H
         
    MOV AH,2
    MOV DL,CL
    INT 21H
        
 EXIT:       
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN