INCLUDE Irvine32.inc
.code
main PROC
    call OuterFunc
    call WriteInt
    exit
main ENDP

OuterFunc PROC
    mov eax, 10
    call InnerFunc
    add eax, 5
    ret
OuterFunc ENDP

InnerFunc PROC
    imul eax, 2
    ret
InnerFunc ENDP
END main