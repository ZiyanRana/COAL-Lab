INCLUDE Irvine32.inc
.code
main PROC
    push 10
    push 12
    call MulStack
    call WriteInt
    exit
main ENDP

MulStack PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp + 12]
    imul eax, [ebp + 8]
    pop ebp
    ret 8
MulStack ENDP
END main