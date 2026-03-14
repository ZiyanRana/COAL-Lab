INCLUDE Irvine32.inc

.data
msg BYTE "Enter number: ",0
res BYTE "Factorial = ",0
num DWORD ?

.code
main PROC

	mov edx, OFFSET msg
	call WriteString
	call ReadInt
	mov ecx, eax

	mov eax, 1
	mov ebx, 1

	L1:
		cmp ebx, ecx
		jg Done
		mul ebx
		inc ebx
		jmp L1

	Done:
		mov edx, OFFSET res
		call WriteString
		call WriteInt
		call Crlf

exit
main ENDP
END main