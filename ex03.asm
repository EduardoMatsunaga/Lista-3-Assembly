.data
msg1:.asciiz"Digite o mes de nascimento: "
msg2:.asciiz"Digite o ano de nascimento: "
msg3:.asciiz"Digite o mes atual: "
msg4:.asciiz"Digite o ano atual: "
msg5:.asciiz"Idade em meses: "
.text
main:
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

li $v0,4
la $a0,msg2
syscall

li $v0,5
syscall
add $t2,$v0,$zero

li $v0,4
la $a0,msg3
syscall

li $v0,5
syscall
add $t3,$v0,$zero

li $v0,4
la $a0,msg4
syscall

li $v0,5
syscall
add $t4,$v0,$zero

sub $t5,$t4,$t2

li $t6, 12
mul $t5,$t5,$t6

sub $t7,$t3,$t1

add $t0,$t5,$t7

li $v0,4
la $a0,msg5
syscall

li $v0,1
add $a0,$t0,$zero
syscall