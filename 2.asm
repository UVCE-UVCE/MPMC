.model small                  
.data                          
  n dw 5555h, 4444h, 3333h, 2222h, 1111h
  len equ 5                    
.code                          
        mov ax, @data         
        mov ds, ax             
        mov cx, len            
        dec cx                 
        outerloop:             
          lea si, n            
          mov dx, cx           
          innerloop:            
            mov ax, [si]       
            mov bx, [si+2]      
            cmp ax, bx          
            jb next             
            mov [si], bx        
            mov [si+2], ax      
            next:               
            add si, 02h         
            dec dx              
          jnz innerloop        
        loop outerloop          
        int 3h                 
        align 16               
        end                   