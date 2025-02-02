# Assembly Code Bug: Invalid Memory Access

This repository demonstrates a common error in assembly programming: accessing an invalid memory address.  The bug arises from an attempt to read data from an uninitialized or inaccessible memory location.

## Bug Description
The `mov eax, [ebx+4]` instruction attempts to copy the contents of memory at the address held in `ebx` plus 4 bytes into the `eax` register.  However, if `ebx` contains an invalid address or the memory is not accessible, a segmentation fault or access violation will occur.

## How to reproduce
1. Assemble and link the code in `bug.asm`.
2. Run the resulting executable.
3. The program will likely crash with a segmentation fault or access violation.

## Solution
The provided `bugSolution.asm` demonstrates how to correct this issue by ensuring `ebx` is properly initialized before accessing the memory location.