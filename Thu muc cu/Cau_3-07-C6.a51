org 00h
jmp main

org 0bh
jmp ngat_timer_0




ngat_timer_0:
inc r1
mov th0,#high(15536)
mov tl0,#low(15536)
cjne r1,#20,thoat_ngat
mov r1,#0
inc r0

thoat_ngat:
reti




main:
mov ie,#10000010b
mov tmod,#00000001b
mov dptr,#bangma
setb tr0
mov r1,#0

lap:
mov r0,#0
lap1:
call giaima
call hienthi
cjne r0,#60,lap1
jmp lap




giaima:
mov a,r0
mov b,#10
div ab
movc a,@a+dptr
mov 30h,a
mov a,b
movc a,@a+dptr
mov 31h,a

ret




hienthi:
mov p1,30h
mov p2,#11111101b
call delay
mov p2,#0ffh

mov p1,31h
mov p2,#11111110b
call delay
mov p2,#0ffh

ret




delay:
mov r2,#50
djnz r2,$

ret




bangma: db 0c0h,0f9h,0a4h,0b0h,99h,92h,82h,0f8h,80h,90h




end