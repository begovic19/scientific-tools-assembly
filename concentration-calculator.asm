; This program calculates the concentration of a solute in a solution.
; It takes the volume of the solution and the mass of the solute as input,
; and returns the concentration in moles per liter.

section .data
    volume db "Enter the volume of the solution (in liters): ", 0
    mass db "Enter the mass of the solute (in grams): ", 0
    result db "The concentration is ", 0
    units db " moles per liter.", 0
    newline db 10, 0
    prompt db "Calculate another concentration? (y/n) ", 0
    buffer resb 1024    ; output buffer
    buffer_pos resd 1  ; position in output buffer

section .bss
    volume_buf resb 10  ; buffer for storing volume as a string
    mass_buf resb 10    ; buffer for storing mass as a string
    response_buf resb 1 ; buffer for storing user response

section .text
    global main

main:
    ; Run the calculator in a loop
    .loop:
        ; Print a prompt and read the volume of the solution from the user
        mov eax, 4
        mov ebx, 1
        mov ecx, volume
        mov edx, lengthof volume
        int 0x80

        ; Read the volume from stdin into volume_buf
        mov e
