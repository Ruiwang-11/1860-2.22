// Step 1: Compute R0 & ~R1 and store in R3
@R1        // Load address of R1
D=M        // D = value of R1
D=!D       // D = bitwise NOT of R1 (~R1)
@R0        // Load address of R0
D=D&M      // D = R0 AND (~R1)
@R3        // Temporary storage in R3
M=D        // R3 = R0 & ~R1

// Step 2: Compute ~R0 & R1 and store in R4
@R0        // Load address of R0
D=M        // D = value of R0
D=!D       // D = bitwise NOT of R0 (~R0)
@R1        // Load address of R1
D=D&M      // D = (~R0) AND R1
@R4        // Temporary storage in R4
M=D        // R4 = ~R0 & R1

// Step 3: Compute R3 | R4 and store in R2 (final result)
@R3        // Load address of R3
D=M        // D = R3
@R4        // Load address of R4
D=D|M      // D = R3 OR R4
@R2        // Destination: R2
M=D        // R2 = R3 | R4 = R0 ⊕ R1
