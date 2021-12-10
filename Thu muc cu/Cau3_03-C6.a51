org 0

main:
setb p1.0
jnb p1.0,goi_tat_dan
call sang_dan
jmp main
goi_tat_dan:
call tat_dan
jmp main




sang_dan:
call delay
mov p0,#0
mov p3,#0
nhan1:
call delay
setb c
mov a,p0
rlc a
mov p0,a
mov a,p3
rlc a
mov p3,a
jnc nhan1

ret




tat_dan:
call delay
mov p0,#0ffh
mov p3,#0ffh
nhan2:
call delay
clr c
mov a,p0
rlc a
mov p0,a
mov a,p3
rlc a
mov p3,a
jc nhan2

ret




delay:
mov r0,#20
nhan3:
mov tmod,#00000001b
mov th0,#high(15536)
mov tl0,#low(15536)
setb tr0
jnb tf0,$
clr tf0
djnz r0,nhan3

ret




end