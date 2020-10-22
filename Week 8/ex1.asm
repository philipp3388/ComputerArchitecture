.data
mes1: .asciiz "Fahrenheit:  "
mes2: .asciiz "Celsius: "
a: .float 32.0
b: .float 5.0
c: .float 9.0
d: .float 0.0

.text

li $v0 , 4
la $a0 , mes1
syscall
li $v0 , 6
syscall

mov.s $f3, $f0
l.s $f2, a
l.s $f0, d
add.s $f12, $f3, $f0
sub.s $f1, $f3, $f2
l.s $f2, b
mul.s $f1, $f1, $f2
l.s $f2, c   
div.s $f1, $f1, $f2  
add.s $f12, $f1, $f0

li $v0 ,4
la $a0, mes2
syscall

addi $v0, $zero, 2
syscall