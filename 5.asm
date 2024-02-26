.model small
.code

        mov ah, 2ch
        int 21h

        mov al, ch
        call disp

        mov dl, ':'
        mov ah, 02h
        int 21h

        mov al, cl
        call disp

        mov dl, ':'
        mov ah, 02h
        int 21h

        mov al, dh
        call disp

        mov dl, 0Dh
        mov ah, 02h
        int 21h

        mov dl, 0Ah
        mov ah, 02h
        int 21h

        mov ah, 2Ah
        int 21h

        mov al, dl
        call disp
        mov dl, '/'
        mov ah, 02h
        int 21h

        mov al, dh
        call disp
        mov dl, '/'
        mov ah, 02h
        int 21h

        add cx, 0F830h
        mov ax, cx
        call disp

        mov dl, 0Dh
        mov ah, 02h
        int 21h

        mov dl, 0Ah
        mov ah, 02h
        int 21h

        mov ah, 4ch
        int 21h

        disp proc
          aam
          mov bx, ax
          add bx, 3030h
          mov dl, bh
          mov ah, 02h
          int 21h
          mov dl, bl
          mov ah, 02h
          int 21h
          ret
        disp endp

end
