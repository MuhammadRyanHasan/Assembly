.model small
.stack 10h
.data
msg db "Hello World!$"
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah, 4Ch
    int 21h
  main endp
end main
