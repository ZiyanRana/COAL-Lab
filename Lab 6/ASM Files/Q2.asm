INCLUDE Irvine32.inc
.code
main PROC
    call ComputeSum
    call WriteInt
    exit
main ENDP

ComputeSum PROC
    mov eax, 5
    add eax, 10
    ret
ComputeSum ENDP
END main