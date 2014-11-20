    global start
    section .text
start:
    mov rax, 0x200004       ; system call for write
    mov rdi, 1              ; file handle 1 is stdout
    mov rsi, message        ; address of string to output
    mov rdx, 13             ; number of bytes
    syscall                 ; invoke operating system to do write

    ; exit(0)
    mov rax, 0x200001       ; system call for exit
    xor rdi, rdi            ; exit code 0
    syscall                 ; invoke operating system to exit
message:
    db "Hello, World", 10   ; note the newline at the end
