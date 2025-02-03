mov eax, [ebx + 0x10]
cmp eax, buffer_size ; check size before adding
jge overflow_handler ; jump to error handling if buffer size is exceeded
add eax, ecx
mov [ebx + 0x10], eax
; ... overflow_handler ... 