	.text
.globl t_main
t_main:
t_main_framesize=80
sub $sp,t_main_framesize
sw $ra,-4+t_main_framesize($sp)
sw $s0,-8+t_main_framesize($sp)
sw $s1,-12+t_main_framesize($sp)
sw $s2,-16+t_main_framesize($sp)
sw $s3,-20+t_main_framesize($sp)
sw $s4,-24+t_main_framesize($sp)
sw $s5,-28+t_main_framesize($sp)
sw $s6,-32+t_main_framesize($sp)
sw $s7,-36+t_main_framesize($sp)
sw $s8,-40+t_main_framesize($sp)

L1:
addu $t0,$sp,t_main_framesize
sw $a0,0($t0)
L2:
addi $t1,$0,1
move $a0,$t1
la $t0,printi
jal printi
L4:
j L0
L3:
addi $t1,$0,0
move $a0,$t1
la $t0,printi
jal printi
j L4
L0:

lw $ra,-4+t_main_framesize($sp)
lw $s0,-8+t_main_framesize($sp)
lw $s1,-12+t_main_framesize($sp)
lw $s2,-16+t_main_framesize($sp)
lw $s3,-20+t_main_framesize($sp)
lw $s4,-24+t_main_framesize($sp)
lw $s5,-28+t_main_framesize($sp)
lw $s6,-32+t_main_framesize($sp)
lw $s7,-36+t_main_framesize($sp)
lw $s8,-40+t_main_framesize($sp)
addu $sp,t_main_framesize

jr $ra

.end t_main
