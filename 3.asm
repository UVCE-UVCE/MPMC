.model small
.data
   str db "malayalam$"
   len dw $-str
   strrev db 20 dup(' ')
   msg1 db "Palindrome", 10, 13, "$"
   msg2 db "Not Palindrome", 10, 13, "$"
.code
   mov ax, @data
   mov ds, ax
   mov es, ax
   mov cx, len
   add cx, -2
   lea si, str
   lea di, strrev
   add si, len
   add si, -2
reverse:
   mov al, [si]
   mov [di], al
   inc di
   dec si
   loop reverse
   mov al, [si]
   mov [di], al
   inc di
   mov byte ptr [di], "$"
   cld
   mov cx, len
   lea si, str
   lea di, strrev
   repe cmpsb
   jz palin
notpalin:
   lea dx, msg2
   mov ah, 09h
   int 21h
   jmp exit
palin:
   lea dx, msg1
   mov ah, 09h
   int 21h
exit:
   mov ah, 4ch
   int 21h
   end
