INCLUDE Irvine32.inc
.code
main PROC
    push 100
    push 40
    call SubStack
    call WriteInt
    exit
main ENDP

SubStack PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp + 12]
    sub eax, [ebp + 8]
    pop ebp
    ret 8
SubStack ENDP
END main