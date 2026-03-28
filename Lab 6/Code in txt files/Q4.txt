INCLUDE Irvine32.inc
.code
main PROC
    push 50
    push 25
    call AddStack
    call WriteInt
    exit
main ENDP

AddStack PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp + 12]
    add eax, [ebp + 8]
    pop ebp
    ret 8
AddStack ENDP
END main