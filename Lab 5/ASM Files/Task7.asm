INCLUDE Irvine32.inc

.data
    prompt      BYTE "Enter string: ", 0
    reversedMsg BYTE "Reversed string: ", 0
    inputBuffer BYTE 100 DUP(0)
    bufSize     DWORD SIZEOF inputBuffer

.code
main PROC

    mov  EDX, OFFSET prompt
    call WriteString

    mov  EDX, OFFSET inputBuffer
    mov  ECX, bufSize
    call ReadString

    dec  EAX

    mov  ESI, OFFSET inputBuffer
    mov  EDI, OFFSET inputBuffer
    add  EDI, EAX

    mov  ECX, EAX
    shr  ECX, 1

SwapLoop:
    mov  AL, [ESI]
    mov  BL, [EDI]
    mov  [ESI], BL
    mov  [EDI], AL
    inc  ESI
    dec  EDI
    loop SwapLoop

    call Crlf
    mov  EDX, OFFSET reversedMsg
    call WriteString
    
    mov  EDX, OFFSET inputBuffer
    call WriteString
    call Crlf

    exit
main ENDP
END main