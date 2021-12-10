org 0
jmp main

org 03h
jmp ngat_ngoai_0




ngat_ngoai_0:
inc r0
cjne r0,#86,thoat_ngat
mov r0,#0

thoat_ngat:
reti



main:
mov ie,#10000001b
mov dptr,#bangma
setb it0
mov r0,#0

lap:
call giai_ma
call hien_thi
jmp lap




giai_ma:
mov a,r0
mov b,#10
div ab
movc a,@a+dptr
mov 30h,a
mov a,b
movc a,@a+dptr
mov 31h,a

ret




hien_thi:
mov p0,30h
mov p2,#11111101b
call delay
mov p2,#0ffh

mov p0,31h
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