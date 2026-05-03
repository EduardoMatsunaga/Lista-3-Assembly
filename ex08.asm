.data
n:.asciiz"Digite o valor da compra (1000 a 9999): "
erro:.asciiz"Valor invalido!\n"
parc:.asciiz"Digite o valor da parcela (100 a 500): "
qntd:.asciiz"\nQuantidade de parcelas: "
.text
inicio:
li $v0,4
la $a0,n
syscall

li $v0,5
syscall
add $t1,$v0,$zero

li $t2,1000
blt $t1,$t2, erro1

li $t2,9999
bgt $t1,$t2, erro1
j parcela

erro1:
li $v0,4
la $a0, erro
syscall
j inicio

parcela:
li $v0,4
la $a0,parc
syscall

li $v0,5
syscall
add $t3,$v0,$zero

li $t2,100
blt $t3,$t2,erro2

li $t2,500
bgt $t3,$t2,erro2
j calcule

erro2:
li $v0,4
la $a0, erro
syscall
j parcela

calcule:
div $t4,$t1,$t3
rem $t5,$t1,$t3

beqz $t5, print
add $t4,$t4,1

print:
li $v0,4
la $a0,qntd
syscall
li $v0,1
add $a0,$t4,$zero
syscall


