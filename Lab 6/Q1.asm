INCLUDE Irvine32.inc
.data
    msg BYTE "Assembly Lab", 0dh, 0ah, 0
.code
main PROC
    call PrintLab
    call PrintLab
    exit
main ENDP

PrintLab PROC
    mov edx, OFFSET msg
    call WriteString
    ret
PrintLab ENDP
END main