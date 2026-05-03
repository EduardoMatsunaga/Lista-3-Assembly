.data
n1:.asciiz"Digite um numero: "
n2:.asciiz"Digite um numero: "
iguais:.asciiz"\nNúmeros iguais"
maior:.asciiz"\nMaior: "
menor:.asciiz"\nMenor: "
.text
main:
#n1 t1
li $v0,4
la $a0,n1
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#n2 t2
li $v0,4
la $a0, n2
syscall

li $v0,5
syscall
add $t2,$v0,$zero

beq $t1,$t2, igual

#a>b
bgt $t1,$t2, a

add $t3, $t2,$zero
add $t4,$t1,$zero
j print

a:
add $t3,$t1,$zero
add $t4,$t2,$zero

print:
li $v0,4
la $a0,maior
syscall

li $v0,1
add $a0,$t3,$zero
syscall

li $v0,4
la $a0,menor 
syscall

li $v0,1
add $a0,$t4,$zero
syscall

j fim

igual:
li $v0,4
la $a0, iguais
syscall

fim:
li $v0,10
syscall