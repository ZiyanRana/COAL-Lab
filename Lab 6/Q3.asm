INCLUDE Irvine32.inc
.code
main PROC
    mov eax, 20
    mov ebx, 30
    call AddRegs
    call WriteInt
    exit
main ENDP

AddRegs PROC
    add eax, ebx
    ret
AddRegs ENDP
END main