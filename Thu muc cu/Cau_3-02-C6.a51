org 0

main:

mov r0,#3
v1:
call sang_dan_tat_dan
djnz r0,v1

mov r0,#4
v2:
call sang_tu_giua_ra
djnz r0,v2

call main




sang_dan_tat_dan:
call delay
mov p0,#00h
mov p2,#00h

sang_dan:
call delay
setb c
mov a,p0
rlc a
mov p0,a
mov a,p2
rlc a
mov p2,a
jnb p2.3, sang_dan

tat_dan:
call delay
clr c
mov a,p0
rlc a
mov p0,a
mov a,p2
rlc a
mov p2,a
jb p2.3, tat_dan

ret




sang_tu_giua_ra:
call delay
mov p0,#01100000b
mov p2,#00000000b
call delay
mov p0,#11110000b
mov p2,#00000000b
call delay
mov p0,#11111000b
mov p2,#00000001b
call delay
mov p0,#11111100b
mov p2,#00000011b
call delay
mov p0,#11111110b
mov p2,#00000111b
call delay
mov p0,#11111111b
mov p2,#00001111b
ret




delay:
mov r1,#10
delay_60ms:
mov tmod,#00000001b
mov th0,#high(5536)
mov tl0,#low(5536)
setb tr0
jnb tf0,$
clr tf0
djnz r1,delay_60ms
ret




end
