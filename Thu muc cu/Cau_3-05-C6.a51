org 0

main:
mov dptr,#bangma
mov tmod,#05h
mov tl0,#00h
setb tr0
lap:
call tach
call hienthi
mov a,tl0
cjne a,#51,lap
jmp main




tach:
mov a,tl0
mov b,#10
div ab
movc a,@a+dptr
mov 20h,a
mov a,b
movc a,@a+dptr
mov 21h,a

ret




hienthi:
mov p0,20h
mov p2,#11111101b

call delay

mov p2,#0ffh

mov p0,21h
mov p2,#11111110b

call delay

mov p2,#0ffh

ret




delay:
mov r0,#50
djnz r0,$
ret




bangma:db 0c0h,0f9h,0a4h,0b0h,99h,92h,82h,0f8h,80h,90h




end