INCLUDE Irvine32.inc
.data
    myStr BYTE "Hello Assembly", 0
.code
main PROC
    push OFFSET myStr
    call PrintViaAddr
    exit
main ENDP

PrintViaAddr PROC
    push ebp
    mov ebp, esp
    mov edx, [ebp + 8]
    call WriteString
    pop ebp
    ret 4
PrintViaAddr ENDP
END main