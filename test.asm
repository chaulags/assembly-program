;declaring data segment
DATA SEGMENT
     MESSAGE DB "* * * * * Welcome To Sachin Chaulagai's Calculator * * * * $"  ;storing the string value to MESSAGE variable
ENDS

;Declaring code segment
CODE SEGMENT  
    ASSUME DS:DATA CS:CODE ;Initializing data segment inside code segment
START:
      MOV AX,DATA ;transferring from DATA to AX register
      MOV DS,AX ;transferring from AX to DS due to register restriction

      LEA DX,MESSAGE ;writing the memory address of variable MESSAGE to DX register
      MOV AH,9H
      INT 21H
      MOV AH,4CH
      INT 21H      
ENDS
END START