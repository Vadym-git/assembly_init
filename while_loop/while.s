.global _start      // Declare the global entry point for the program

.text               // Section declaration for code (text segment)
_start:             // Label marking the start of the program
    mov x0, #0      // Initialize register x0 to 0

loop:               // Loop label
    cmp x0, #5      // Compare the value in x0 with 5
    bge end         // Branch to 'end' if x0 is greater than or equal to 5
    add x0, x0, #1  // Increment the value in x0 by 1
    b loop          // Unconditional branch to 'loop' to repeat the process

end:                // End label
    mov x0, 0       // exit code
    mov x8, #93     // Exit system call number
    svc #0          // Make the system call
