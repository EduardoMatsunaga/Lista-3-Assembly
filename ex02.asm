.data
msg1:.asciiz"Digite o primeiro valor: "
msg2:.asciiz"Digite o segundo valor: "
msg3:.asciiz"\nValores trocados:\nPrimeiro valor: "
msg4:.asciiz"\nSegundo valor: " 
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

add $t3,$t1,$zero
add $t1,$t2,$zero
add $t2,$t3,$zero

li $v0,4
la $a0,msg3
syscall

li $v0,1
add $a0,$t1,$zero
syscall

li $v0,4
la $a0,msg4
syscall

li $v0,1
add $a0,$t2,$zero
syscall
