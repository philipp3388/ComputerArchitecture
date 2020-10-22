.data
mes1: .asciiz "Enter the natural number: "
mes2: .asciiz "The sum is "
 
.text

li $v0, 4
la $a0, mes1
syscall
li $v0, 5
syscall
 
move $a0, $v0
li $a1, 0
li $a2, 1
jal iteration
li $v0, 1
move $a0, $a1
syscall 
li $v0, 10
syscall
 
iteration:
add $a1, $a1, $a2
beq $a2, $a0, exit
add $a2, $a2, 1
j iteration
 
exit:
li $v0, 4
la $a0, mes2
syscall
jr $ra