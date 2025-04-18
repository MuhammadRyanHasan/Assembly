.model small
.stack 100h
.data
x0 db 0dh,0ah, "$"
x1 db "ENTER FIRST NUMBER FOR ADDITION: $"
x2 db "ENTER SECOND NUMBER FOR ADDITION: $"
x3 db "THE RESULT IS: $"
x4 db 2 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,x1
    int 21h
    
    mov ah,01h
    int 21h
    sub al, '0'
    mov bl, al
    
    mov ah,09h
    lea dx,x0
    int 21h
    
    mov ah,09h
    lea dx,x2
    int 21h
    
    mov ah,01h
    int 21h
    sub al, '0'
    mov bh, al
    
    mov ah,09h
    lea dx,x0
    int 21h
    
    mov ah,09h
    lea dx,x3
    int 21h
    
    mov al, bl
    add al, bh
    
    add al, '0'
    mov x4, al
    mov x4+1, '$'
    
    mov ah, 09h
    lea dx, x4
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main
