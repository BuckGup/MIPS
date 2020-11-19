.data


X_message: .asciiz "Please enter x :"
Y_message: .asciiz "Please enter y: "
Result: .asciiz    "Ressult \n"

x: .asciiz "X: "
y: .asciiz "Y: "



.text


li $v0,4
la $a0,X_message
syscall

li $v0,5
syscall
move $t0,$v0



li $v0,4
la $a0,Y_message
syscall

li $v0,5
syscall
move $t1,$v0


move $a0,$t0
move $a1,$t1


jal compare

li $v0,11
la $a0,0x0A
syscall

li $v0,4
la $a0,Result
syscall

li $v0,4
la $a0,x
syscall

li $v0,1
move $a0,$s2
syscall

li $v0,11
la $a0,0x0A
syscall


li $v0,4
la $a0,y
syscall

li $v0,1
move $a0,$t5
syscall


li $v0,10
syscall


compare:

move $t2,$a0
move $t3,$a1

mul $s2,$t2,$t2

mul $t3,$t3,$t3

li $t4,2

mul $t5,$t4,$t3


jr $ra