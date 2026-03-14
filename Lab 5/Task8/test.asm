INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter N: ", 0
	num DWORD ?
	space BYTE " ", 0

.code
main PROC

	mov EDX, OFFSET prompt
	call WriteString
	call ReadInt
	mov num, EAX

	mov EAX, 2
	mov ECX, num

	EvenLoop:
	cmp EAX, ECX
	jg Done
	call WriteInt
	mov EDX, OFFSET space
	call WriteString
	add EAX, 2
	jmp EvenLoop

	Done:
	call Crlf
	exit
main ENDP
END main