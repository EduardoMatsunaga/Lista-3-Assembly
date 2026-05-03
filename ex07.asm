.data
n:.asciiz"Digite um numero entre 100 a 999: "
erro:.asciiz"Numero invalido! Digite novamente:\n"
cent:.asciiz"\nCentena: "
dez:.asciiz"\nDezena: "
uni:.asciiz"\nUnidade: "
.text
main:

inicio:
li $v0,4
la $a0,n
syscall

li $v0,5
syscall
add $t1,$v0,$zero

li $t2,100
blt $t1,$t2, error

li $t2,999
bgt $t1,$t2, error

j calcule

error:
li $v0,4
la $a0, erro
syscall
j inicio

calcule:
#centena
li $t2,100
div $t3,$t1,$t2
mul $t4,$t3,$t2
sub $t5,$t1,$t4

#dezena
li $t2,10
div $t6,$t5,$t2

#unidade
mul $t7,$t6,$t2
sub $t8,$t5,$t7

li $v0,4
la $a0,cent
syscall
li $v0,1
add $a0,$t3,$zero
syscall

li $v0,4
la $a0,dez
syscall
li $v0,1
add $a0,$t6,$zero
syscall

li $v0,4
la $a0,uni
syscall
li $v0,1
add $a0,$t8,$zero
syscall

