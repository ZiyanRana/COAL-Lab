INCLUDE Irvine32.inc

.data
msg BYTE "Welcome to COAL Lab",0

.code
main PROC
    mov edx, OFFSET msg
    call WriteString
    call Crlf
    exit
main ENDP

END main