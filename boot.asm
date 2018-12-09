; infinite loop
loop:
    jmp loop

; pad the 512 block boot sector
; syntax:
; 
; db    -  "define byte" write 0
; $     - assembly position at the beginning of this line
; $$    - assembly position of start of this section (in this case, 0)
; times - times n line - repeat line n times
times 510-($-$$) db 0

; add the boot code 0xAA55 to the end
; dw "define word" - used for 2 bytes
dw 0xaa55