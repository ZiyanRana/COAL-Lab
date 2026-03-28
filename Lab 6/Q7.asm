INCLUDE Irvine32.inc
.code
main PROC
    push 9
    call SquareStack
    call WriteInt
    exit
main ENDP

SquareStack PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    imul eax, eax
    pop ebp
    ret 4
SquareStack ENDP
END main