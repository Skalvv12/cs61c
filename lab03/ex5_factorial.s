.globl factorial

.data
n: .word 8

.text
# Don't worry about understanding the code in main
# You'll learn more about function calls in lecture soon
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

# factorial takes one argument:
# a0 contains the number which we want to compute the factorial of
# The return value should be stored in a0
factorial:
    # YOUR CODE HERE
    li t0 0 #n_0
    #the bytes are -1
    li t0 1 #factorial
    li t1 0 #nth - factorial's number
    count:
      
           addi t1 t1 1 #n+1
           
           li t3 32
           li t2 0 #32 bits ctr 
           
           addi t5 t1 0
           li t6 0
           mult:
                

                andi t4 t5 0x1 #n_1 get 1st bit
                beqz t4 shift_right #branch if nth bit 0 
                    
                    sll t4 t0 t2 #if n_1 bit = 1, n_0 mult by 2th complement of n_2
                    add t6 t6 t4
                    
                shift_right:
                srli t5 t5 1 #shift n_1 right

                addi t2 t2 1 #go n+1th bit
                blt t2 t3 mult #if n < 32
                
            addi t0 t6 0
            bgt a0 t1 count #n_1 > f
                    
     addi a0 t0 0        
                        
                        
                    
       
       
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra


    
