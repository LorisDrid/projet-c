%include	'io.asm'

section	.bss
sinput:	resb	255	;reserve a 255 byte space in memory for the users input string

section	.text
global _start
_start:
	push	85
	push	18
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	push	85
	push	18
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	push	85
	push	18
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	push	85
	push	18
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	push	85
	push	18
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	push	85
	push	18
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	imul	eax, ebx		 ; effectue la multiplication
	push	eax		 ; empile le résultat
	push	29
	pop	ebx		 ; depile la seconde operande dans ebx
	pop	eax		 ; depile la permière operande dans eax
	add	eax, ebx		 ; effectue l'addition
	push	eax		 ; empile le résultat
	pop	eax
	call	iprintLF
	mov	eax, 1		 ; 1 est le code de SYS_EXIT
	mov	ebx, 0		 ; mettre 0 dans ebx
	int	0x80		 ; exit