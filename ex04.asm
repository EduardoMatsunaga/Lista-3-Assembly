.data
msg1:.asciiz"Digite o seu salário atual: "
msg2:.asciiz"Salário após ajuste de 25%: "
.text
main:
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

li $t2, 25
mul $t3,$t1,$t2
li $t4, 100
div $t5,$t3,$t4

add $t0,$t1,$t5

li $v0,4
la $a0,msg2
syscall

li $v0,1
add $a0,$t0,$zero
syscall