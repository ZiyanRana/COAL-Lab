INCLUDE Irvine32.inc
.data
    myStr BYTE "How long is this?", 0
.code
main PROC
    push OFFSET myStr
    call GetLength
    call WriteInt
    exit
main ENDP

GetLength PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp + 8]
    sub eax, eax
L1:
    cmp BYTE PTR [esi], 0
    je done
    inc eax
    inc esi
    jmp L1
done:
    pop ebp
    ret 4
GetLength ENDP
END main