INCLUDE Irvine32.inc
.data
    myArray DWORD 1, 2, 3, 4, 5
.code
main PROC
    push OFFSET myArray
    push LENGTHOF myArray
    call ArraySum
    call WriteInt
    exit
main ENDP

ArraySum PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp + 12]
    mov ecx, [ebp + 8]
    sub eax, eax
L1:
    add eax, [esi]
    add esi, 4
    loop L1
    pop ebp
    ret 8
ArraySum ENDP
END main