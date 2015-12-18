%define MAX 100000
%define MAX_dna 100000
%include 'database.asm'

section .text

cetak :
	mov eax, 4 
	mov ebx, 1
	;mov edx, MAX
	int 0x80
	ret

openfile:
	mov ebx, eax
	 mov eax,5
	 mov ecx, 0
	 mov edx, 777
	 int 0x80
	
	 mov dword[lokasifile],eax
	 
	 mov eax, 3
	 mov ebx, [lokasifile]
	 mov ecx, kata_a
	 mov edx, MAX
	 int 0x80
	 ret

	
baca : 
	mov eax, 3 
	mov ebx, 0
	mov edx, MAX
	int 0x80 
	ret

delay :
	push eax
	push ebx
	push ecx
	push edx

	mov dword[tv_sec],0
	mov dword[tv_usec],10000000
	mov eax,162 					;syscal delay
	mov ebx, timeval
	mov ecx,0
	int 0x80

	pop edx
 	pop ecx
	pop ebx
	pop eax
	ret
	
readAndDelay:
   cmp  byte [ecx], 0
   je   finish_delay
  
   mov  eax, 4
   mov  ebx, 1
   mov  edx, 1
   int  80h
  
   call delay
  
   inc  ecx
   jmp  readAndDelay
  
finish_delay:
  ret

compare_dna :
	mov ecx, 0
	mov ebx, 0
	
	loopS:
	cmp ecx, MAX
	je endLoopS
	mov bl, byte[input+ecx]
	
	cmp ebx, 96
	jg uppercase
	
	afterupper:
	jmp cek1
	
	aftercek:
	cmp eax,1
	je salah
	
	mov edx, 84
	cmp ebx,edx
	je equal
	
	mov edx, 116
	cmp ebx,edx
	je equal
	
	inc ecx
	jmp loopS

	equal:
	mov byte[input+ecx],85
	inc ecx
	jmp loopS
	
	uppercase:
	sub ebx,32
	mov byte[input+ecx], bl
	jmp afterupper

	cek1:
	mov edx, 65	
	cmp ebx, edx
		je sama
	mov edx, 67
	cmp ebx, edx
		je sama
	mov edx, 71
	cmp ebx, edx
		je sama
	mov edx, 84
	cmp ebx, edx
		je sama	
	mov edx, 10
	cmp ebx, edx
		je sama
	mov edx, 0
	cmp ebx, edx
		je sama
	mov eax,1
	jmp aftercek

	sama:
	mov eax,0
	jmp aftercek

	endLoopS:
	mov ecx, input
	ret
	

	
salah:
	Xor ecx,ecx
	mov ecx,pesan
	mov eax, 4 
	mov ebx, 1
	mov edx, [len_pesan]
	int 0x80
	jmp exit
	
	
exit:
	mov eax, 1
	mov ebx, 0

	int 0x80
