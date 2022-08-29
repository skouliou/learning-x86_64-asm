section .data
N:      dd      1000    ; N: int = 1000

section .text
global _start

_start:

; set loop counter
    xor     r11, r11        ; runnin sum: r11 = 0
    mov     ecx, 1          ; i = 1

; start looping
.loop_begin:
    cmp     ecx, dword[N]
    je      b_result        ; if (i == N) break


    ; if i is divisible by 3 add it to runnin sum
    mov     eax, ecx
    xor     rdx, rdx
    mov     bx, 3
    div     bx

    cmp     dx, 0
    je      .sum_then_loop      ; skip the divisable by 5 check

    ; if i is divisible by 5 add it to runnin sum
    mov     eax, ecx
    xor     rdx, rdx        
    mov     bx, 5
    div     bx

    cmp     dx, 0
    jne     .inc_then_loop

.sum_then_loop:
    add     r11d, ecx

.inc_then_loop:
    inc     ecx             ; increment loop counter
    jmp     .loop_begin

b_result:                   ; break point for checking result

.exit:
    mov     rax, 60         ; sys_exit(rdx: exit code)
    mov     rdx, r11        ; return result as exit code
    syscall

