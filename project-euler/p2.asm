; basic python solution
; fib1 = 1
; fib2 = 2
; sum = 0
; while fib2 < 4000000:
;   if fib2 % 2 == 0: sum += fib2 
;   fib2, fib1 = fib2 + fib1, fib2

section .data
limit:      dd      4000000
two:        dd      2

section .text
global _start

_start:
    xor     esi, esi            ; sum  (esi) = 0
    mov     ebx, 1              ; fib1 (ebx) = 1
    mov     ecx, 2              ; fib2 (ecx) = 2

    xor     eax, eax            ; sum = 0

.rep:
    cmp     ebx, dword[limit]   ; fib2 < limit
    jge     done

    mov     eax, ecx
    xor     edx, edx
    div     dword[two]

    xchg    ebx, ecx            ; fib1, fib2 = fib2, fib1
    add     ecx, ebx            ; fib2 += fib1

    cmp     dx, 0
    jne     .rep

    add     esi, ebx            ; sum += fib2
    jmp     .rep

done:                           ; result in esi
    mov rax, 60
    mov rdi, 0
    syscall

