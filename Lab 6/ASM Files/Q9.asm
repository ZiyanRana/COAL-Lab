INCLUDE Irvine32.inc
.data
    myStr BYTE "Loop Print", 0
.code
main PROC
    push OFFSET myStr
    call PrintChars
    exit
main ENDP

PrintChars PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp + 8]
L1:
    mov al, [esi]
    cmp al, 0
    je done
    call WriteChar
    inc esi
    jmp L1
done:
    pop ebp
    ret 4
PrintChars ENDP
END main