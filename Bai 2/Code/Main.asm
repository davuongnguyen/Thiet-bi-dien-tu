org 0000H

main: 
	jnb p1.0,quaynguoc
	call quaythuan
	jmp main

quaynguoc:
	mov p2,#01h
	jmp dieutoc
	ret

quaythuan:
	mov p2,#02h
	jmp dieutoc
	ret

dieutoc:
	jnb p1.1, quay50
	jnb p1.2, quay100
	jmp main
	ret

quay50:
	setb p0.0
	call delay50
	clr p0.0
	call delay50

	jmp main
	ret

quay100:
	setb p0.0
	call delay100
	clr p0.0
	call delay50

	jmp main
	ret

delay50:
	    mov r3,#200
	delay0:
		mov r5,#100
		djnz r5,$
		djnz r3,delay0
	ret

delay100:
	    mov r3,#100
	delay1:
		mov r5,#100
		djnz r5,$
		djnz r3,delay1
	ret



end