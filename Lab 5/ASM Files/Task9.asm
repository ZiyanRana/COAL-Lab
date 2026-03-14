INCLUDE Irvine32.inc

.data
arr DWORD 12, 5, 7, 20, 3
n   DWORD 5
msg BYTE "Largest = ", 0

.code
main PROC
    mov EAX, [arr]       
    mov ECX, n
    mov ESI, 1           

CheckLoop:
    cmp EAX, [arr + ESI*4]
    jge Skip
    mov EAX, [arr + ESI*4]
Skip:
    inc ESI
    loop CheckLoop

    mov EDX, OFFSET msg
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP
END main