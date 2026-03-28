INCLUDE Irvine32.inc
.data
    myArray DWORD 15, 67, 34, 89, 21
.code
main PROC
    push OFFSET myArray
    push LENGTHOF myArray
    call FindMax
    call WriteInt
    exit
main ENDP

FindMax PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp + 12]
    mov ecx, [ebp + 8]
    mov eax, [esi]
L1:
    cmp [esi], eax
    jle next
    mov eax, [esi]
next:
    add esi, 4
    loop L1
    pop ebp
    ret 8
FindMax ENDP
END main