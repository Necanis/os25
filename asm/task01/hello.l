     1                                  section .data
     2 00000000 48656C6C6F2C20776F-      msg db "Hello, world!", 0x0A
     2 00000009 726C64210A         
     3                                   len equ $-msg 
     4                                  section .text
     5                                   global _start
     6                                  _start:
     7 00000000 B804000000               mov eax, 4 
     8 00000005 BB01000000               mov ebx, 1 
     9 0000000A B9[00000000]             mov ecx, msg 
    10 0000000F BA0E000000               mov edx, len 
    11 00000014 CD80                     int 0x80
    12                                  L_exit:
    13 00000016 B801000000                mov eax, 1 
    14 0000001B BB00000000               mov ebx, 0 
    15 00000020 CD80                     int 80h 
