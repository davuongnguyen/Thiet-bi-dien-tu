org 0
main:

mov r0,#3
v1:
call sangdantatdan
djnz r0,v1

mov r0,#2
v2:
call tattugiuara
djnz r0,v2

mov r0,#4
v3:
call choptat
djnz r0,v3

jmp main




sangdantatdan:
mov p2,#0ffh

sangdan:
call taotre
clr c
mov a,p2
rlc a
mov p2,a
jc sangdan

mov p2, #00h

tatdan:
call taotre
mov a,p2
setb c
rlc a
mov p2,a
jnc tatdan

ret




tattugiuara:
call taotre
mov p2,#00h
call taotre
mov p2,#00011000b
call taotre
mov p2,#00111100b
call taotre
mov p2,#01111110b
call taotre
mov p2,#11111111b
ret




choptat:
call taotre
mov p2,#00h
call taotre
mov p2,#0ffh
call taotre
ret




taotre:
mov r1,#10

lap:
mov tmod,#00010000b
mov th1,#high(19456)
mov tl1,#low(19456)
setb tr1
jnb tf1,$
clr tf1
djnz r1,lap
ret 

end