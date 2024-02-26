.model small
.data
    n dw 6
    r dw 2
    ncr dw 0
.code
    mov ax,@data
    mov ds,ax

    mov ax,n
    mov bx,r 

    call ncr_proc

    mov ah,4ch
    int 21h

    ncr_proc proc
        cmp bx,ax
        jz n1

        cmp bx,0
        jz n1

        cmp bx,1
        jz n2

        mov cx,ax
        dec cx

        cmp cx,bx
        jz n2

        push ax
        push bx

        dec ax
         
        call ncr_proc

        pop bx
        pop ax
        dec ax
        dec bx
        call ncr_proc

        jmp last

        n1:
            add ncr,1
            ret
        n2: 
            add ncr,ax
            ret

        last:
            ret
    ncr_proc endp
end          



