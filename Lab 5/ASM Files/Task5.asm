INCLUDE Irvine32.inc

.data
array DWORD 5, 10, 15, 20
count DWORD 4
resultMsg BYTE "Sum = ",0

.code
main PROC
    mov esi, OFFSET array
    mov ecx, count
    mov eax, 0             ; sum = 0 

sumLoop:
    add eax, [esi]      
    add esi, 4          
    loop sumLoop

    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP

END main