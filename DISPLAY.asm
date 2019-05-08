.MODEL SMALL
.STACK 100H

.DATA
   STRING1   DB  'Enter first capital letter : $'
   STRING2   DB  'Enter second capital letter : $'
   STRING3   DB  'Capital letters in alphabetical order are : $'
   NEXT_LINE  DB  0DH,0AH,"$"

.CODE
   MAIN PROC
     MOV AX, @DATA  ;INITIALIZE              
     MOV DS, AX

     MOV AH, 2                    
     MOV DL, "?"
     INT 21H

     MOV AH, 9                    

     LEA DX, NEXT_LINE ;NEXT LINE           
     INT 21H

     LEA DX, STRING1             
     INT 21H

     MOV AH, 1                    
     INT 21H                      
                        ;Joydip Chowdhury
     MOV BL, AL         ;1512033042          

     MOV AH, 9                    

     LEA DX, NEXT_LINE            
     INT 21H

     LEA DX, STRING2             
     INT 21H

     MOV AH, 1                    
     INT 21H                      

     MOV BH, AL                   

     MOV AH, 9                    

     LEA DX, NEXT_LINE            
     INT 21H

     LEA DX, STRING3             
     INT 21H
     MOV AH, 2                    
     CMP BL, BH
     JAE JA1
     
     MOV DL, BL
     INT 21H

     MOV DL, BH
     INT 21H
     JMP EXIT

     JA1:
       MOV DL, BH
       INT 21H

       MOV DL, BL
       INT 21H

     EXIT:

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN