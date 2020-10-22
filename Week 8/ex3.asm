.data
result: .asciiz "e^2/pi = "
e: .float 2.71828
pi: .float 3.1415
 
.text
l.s $f0, e
l.s $f1, pi
 
mul.s $f0, $f0, $f0
div.s $f2, $f0, $f1

li $v0, 4
la $a0, result
syscall

li $v0, 2
mov.s $f12, $f2
syscall

li $v0, 10
Syscall