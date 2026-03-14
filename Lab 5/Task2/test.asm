INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter first number: ",0
msg2 BYTE "Enter second number: ",0
resultMsg BYTE "Result = ",0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov ebx, eax

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt

    xchg eax, ebx
    sub eax, ebx

    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP

END main