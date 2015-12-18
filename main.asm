%include 'kodon.asm'

section .text
global main:
main:
  
  mov eax, welcome
  call openfile
  call readAndDelay
 
mulai:
  mov ecx, sep
 ; mov edx, len_sep
  call readAndDelay
  
  mov ecx, text
  mov edx, len_text
  call cetak
  
  xor ecx,ecx
  mov ecx, input
  call baca
  call compare_dna
  
  mov ecx, text1
  mov edx, len_text1
  call cetak
  
  mov ecx, input
  mov edx, MAX_dna
  call cetak
  
  mov ecx, text2
  mov edx, len_text2
  call cetak
 
  call compare_rna
  
  mov ecx, sep
 ; mov edx, len_sep
  call readAndDelay
  
konfirmasi:
  mov ecx, text3
  mov edx, len_text3
  call cetak
  mov ecx, konfirm
  call baca
  
	movzx ebx,byte[konfirm]
	cmp ebx,78
	je selesai
	cmp ebx,121
	je mulai
	cmp ebx,89
	je mulai
	cmp ebx,110
	je selesai
	jmp masukan_salah
	
selesai:
	mov ecx, pesan_end
	mov edx, len_pesan_end
	call cetak
	int 0x80
	jmp exit
	
masukan_salah:
	mov ecx, konfirm_salah
	mov edx, len_konfirm_salah
	call cetak
	int 0x80
	jmp konfirmasi
	
	

	
	
  call exit
