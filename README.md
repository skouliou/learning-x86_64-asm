# What have I learned so far


assembly is all about the details, there are no abastarctions, just you and the electrical pulses that we call ones and zeros.

assembly is tightly bound to the hardware you use (cpu), has an instruction set (ISA) that is basically a human readable representation of the electrical pattern of ones and zeros that is needed to activate a certain circuit inside the cpu that does a certain job with the input operands.

assembler is the program that translates this human readable code into the actual ones and zeros that the computer understands, it follows certain rules to generate the binary file, those rules are dependent on the targeted system and the type of cpu you're assembling for. cause as always humans don't agree on anything, each group has it's own conventions and idiologies, so if you want you code to work on a certain platform you need to play by its rules.

the thing that got me confused at first when I started learning is the assembler syntax, I didn't know what actual assembly is. till I realized that I was writing code for the assembler itself, every assembler has its own style of writing assembly, and provides extra help through macros, conditionals, declares, repeats, includes... they are not part of assembly, they are part of the assembler.
