INCLUDE Irvine32.inc
.code
main PROC
    mov eax, 10
    mov ebx, 5
    call MyAdd
    call WriteInt
    call Crlf
    mov eax, 10
    mov ebx, 5
    call MyMul
    call WriteInt
    exit
main ENDP

MyAdd PROC
    add eax, ebx
    ret
MyAdd ENDP

MyMul PROC
    imul eax, ebx
    ret
MyMul ENDP
END main