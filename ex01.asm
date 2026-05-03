.data
msg1:.asciiz"Digite o valor em dólar: "
msg2:.asciiz"Valor em reais: "
.text
main:
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

li $t2,5
mul $t3,$t2,$t1

li $v0,4
la $a0,msg2
syscall

li $v0,1
add $a0,$t3,$zero
syscall

