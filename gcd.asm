;;; gcd.asm

global gcd
extern printf

section .text

; int gcd(x, y)
gcd:
  ; proloog
  push ebp
  mov ebp, esp

  mov edx, 0
  ; Võta argumendid
  mov eax, [ebp+8]  ; x
  ; EBX-d ei tohi puutuda
  mov ecx, [ebp+12] ; y

  ; Hakka leidma suurimat ühistegurit

  cmp eax, ecx
  jne tsykkel
  jmp lbl_end; Kui x==y

tsykkel:
  cmp eax,ecx
  jg lahuta_xist;x-y
  jmp lahuta_yist;y-x

lahuta_xist:
  sub eax, ecx
  cmp eax, ecx
  jne tsykkel
  jmp lbl_end

lahuta_yist:
  sub ecx, eax
  cmp eax, ecx
  jne tsykkel
  jmp lbl_end
  

lbl_end:
  ; epiloog
  mov esp, ebp
  pop ebp

  ret

section .data
debug:
  db '%d', 10, 0
