INCLUDE Irvine32.inc

.data
msg BYTE "Enter value of N: ",0

.code
main PROC

    mov edx, OFFSET msg
    call WriteString
    call ReadInt
    mov ecx, eax
    mov eax, 1

loopStart:
    call WriteInt
    inc eax
    loop loopStart

    call Crlf
    exit
main ENDP

END main