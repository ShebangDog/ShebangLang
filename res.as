  .text

# entry_point
  jal main
  li $v0, 10
      syscall

  .globl main
main:
  #prologue
  #push
  sub  $sp, $sp, 4
  sw  $fp, 0($sp)

  #push
  sub  $sp, $sp, 4
  sw  $ra, 0($sp)

  move  $fp, $sp
  
  #prologue
#value = value
  li $t0, 2
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -4($fp)
  #store#value = value

#result = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  li $t0, 1000
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)


  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 3
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  mul $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -8($fp)
  #store#result = value

#equal = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  seq $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -12($fp)
  #store#equal = value

  lw  $t0,  -12($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#notEqual = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  sne $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -16($fp)
  #store#notEqual = value

  lw  $t0,  -16($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#greater = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  sgt $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -20($fp)
  #store#greater = value

  lw  $t0,  -20($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#greaterEqual = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  sge $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -24($fp)
  #store#greaterEqual = value

  lw  $t0,  -24($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#less = value
  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  sgt $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -28($fp)
  #store#less = value

  lw  $t0,  -28($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#lessEqual = value
  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  sle $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -32($fp)
  #store#lessEqual = value

  lw  $t0,  -32($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  li $t0, 12
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  lw  $t0,  -8($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  add $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


#mips = value
  li $t0, 12
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  li $t0, 3
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  add $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -36($fp)
  #store#mips = value

  lw  $t0,  -36($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  add $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)


  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)


  li $t0, 3
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $a1, 0($sp)
  addiu $sp, $sp, 4

#pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_plus
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)

  #pop
  lw $v0, 0($sp)
  addiu $sp, $sp, 4

  #epilogue
  
  move  $sp,  $fp
  #pop
  lw $ra, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $fp, 0($sp)
  addiu $sp, $sp, 4

  #epilogue

  jr  $ra

  .globl function_plus
function_plus:
  #prologue
  #push
  sub  $sp, $sp, 4
  sw  $fp, 0($sp)

  #push
  sub  $sp, $sp, 4
  sw  $ra, 0($sp)

  move  $fp, $sp
  #push
  sub  $sp, $sp, 4
  sw  $a0, 0($sp)

#push
  sub  $sp, $sp, 4
  sw  $a1, 0($sp)

  #prologue
#spim = value
  li $t0, 1
  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  lw  $t0,  0($sp)  #store
  sw  $t0, -12($fp)
  #store#spim = value

  lw  $t0,  -12($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  lw  $t0,  -4($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  add $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  lw  $t0,  -8($fp)

  #push
  sub  $sp, $sp, 4
  sw  $t0, 0($sp)

  #pop
  lw $t1, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $t2, 0($sp)
  addiu $sp, $sp, 4

  add $s0, $t2, $t1
  #push
  sub  $sp, $sp, 4
  sw  $s0, 0($sp)

  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

  jal function_print
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)

  #pop
  lw $v0, 0($sp)
  addiu $sp, $sp, 4

  #epilogue
  #pop
  lw $a0, 0($sp)
  addiu $sp, $sp, 4

#pop
  lw $a1, 0($sp)
  addiu $sp, $sp, 4

  move  $sp,  $fp
  #pop
  lw $ra, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $fp, 0($sp)
  addiu $sp, $sp, 4

  #epilogue

  jr  $ra

  .globl function_print
function_print:
  #prologue
  #push
  sub  $sp, $sp, 4
  sw  $fp, 0($sp)

  #push
  sub  $sp, $sp, 4
  sw  $ra, 0($sp)

  move  $fp, $sp
  
  #prologue
  li  $v0, 1
  syscall

  li  $v0, 0
  #push
  sub  $sp, $sp, 4
  sw  $v0, 0($sp)

  #pop
  lw $v0, 0($sp)
  addiu $sp, $sp, 4

  #epilogue
  
  move  $sp,  $fp
  #pop
  lw $ra, 0($sp)
  addiu $sp, $sp, 4

  #pop
  lw $fp, 0($sp)
  addiu $sp, $sp, 4

  #epilogue

  jr  $ra

