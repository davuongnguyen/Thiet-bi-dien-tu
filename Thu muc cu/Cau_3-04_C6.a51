org 0

main:
mov p1,#0ffh
mov p2,#0

jb p1.0, kiem_tra_1
setb p2.0
setb p2.4
call delay
jmp main


kiem_tra_1:
jb p1.1, kiem_tra_2
setb p2.1
setb p2.4
call delay
jmp main


kiem_tra_2:
jb p1.2,kiem_tra_3
setb p2.2
setb p2.4
call delay
jmp main


kiem_tra_3:
jb p1.3, main
setb p2.3
setb p2.4
call delay
jmp main




delay:
mov r0,#60
nhan:
mov tmod,#01h
mov th0,#high(15536)
mov tl0,#low(15536)
setb tr0
jnb tf0,$
clr tf0
djnz r0,nhan

ret




end