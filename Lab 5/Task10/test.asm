INCLUDE Irvine32.inc

.data
prompt BYTE "Enter number: ", 0
msg    BYTE "Factorial = ", 0
n      DWORD ?

.code
main PROC
    mov EDX, OFFSET prompt
    call WriteString
    call ReadInt
    mov n, EAX

    mov EAX, 1
    mov EBX, 1
    mov ECX, n

FactLoop:
    mul EBX
    inc EBX
    loop FactLoop

    mov EDX, OFFSET msg
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP
END main