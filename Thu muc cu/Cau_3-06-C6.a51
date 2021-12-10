org 0

main:
mov dptr,#bangma
mov tmod,#50h
mov tl1,#00h
setb tr1

lap:
call giaima
call hienthi
mov a, tl1
cjne a,#71,lap
jmp main




giaima:
mov a,tl1
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




bangma: db 0c0h,0f9h,0a4h,0b0h,99h,92h,82h,0f8h,80h,90h




end