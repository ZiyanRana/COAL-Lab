INCLUDE Irvine32.inc
.data
    myArray DWORD 10, 20, 30, 40, 50
.code
main PROC
    push OFFSET myArray
    push LENGTHOF myArray
    call PrintArray
    exit
main ENDP

PrintArray PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp + 12]
    mov ecx, [ebp + 8]
L1:
    mov eax, [esi]
    call WriteInt
    add esi, 4
    loop L1
    pop ebp
    ret 8
PrintArray ENDP
END main