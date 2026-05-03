.data
a:.asciiz"Digite o valor de A: "
b:.asciiz"Digite o valor de B: "
c:.asciiz"Digite o valor de C: "
maior:.asciiz"\nDuas raizes reais"
igual:.asciiz"\nUma raiz real"
menor:.asciiz"\nNão existem raizes reais"
.text
main:
#a t1
li $v0,4
la $a0,a
syscall

li $v0,5
syscall
add $t1,$v0,$zero

#b t2
li $v0,4
la $a0, b
syscall

li $v0,5
syscall
add $t2,$v0,$zero

#c t3
li $v0,4
la $a0,c
syscall

li $v0,5
syscall
add $t3,$v0,$zero

mul $t4,$t2,$t2
li $t5,4
mul $t6,$t1,$t5
mul $t7,$t6,$t3
sub $t0,$t4,$t7

# >0
bgtz $t0, duas

# = 0
beqz $t0, uma

# <0
j nenhuma

duas:
li $v0,4
la $a0,maior 
syscall
j fim

uma:
li $v0,4
la $a0,igual
syscall
j fim

nenhuma:
li $v0,4
la $a0,menor
syscall

fim:
li $v0,10
syscall