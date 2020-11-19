.data


Sequence:  .asciiz  "Sequence is: "
skip_number:  .word  5,7,9,10,,12,14,15,17,19,20,21,22,23,24,25,27,29,30,31,32,33,34,35,37,39,40,41,42,43,44,45,46,49,50

.text

li $v0,4
la $a0,Sequence
syscall

li $t0,50
li $s0,1
la $s1,skip_number

move $a0,$t0
move $a1,$s0


jal isSum


li $v0,10
syscall


isSum:


move $t1,$a0
move $t2,$a1

loop:

bgt $t2,$t1,exit

lw $s2,0($s1)

beq $t2,$s2,skip

li $v0,11
la $a0,' '
syscall

li $v0,1
move $a0,$t2
syscall

addi $t2,$t2,1

j loop

skip:

addi $s1,$s1,4
addi $t2,$t2,1

j loop

exit:

jr $ra




