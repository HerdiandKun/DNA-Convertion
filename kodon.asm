%include 'core.asm'

section .text
compare_rna :
	mov ecx, 0
	mov ebx, 1
	mov eax, 0
		
	loop1:
	cmp ebx, 0
	je endLoop1
	cmp ebx, 10
	je endLoop1	
	cmp eax, 1
	je cek_u
	
;------------------------------------cek aug [kodon start]--------------------------------------------------------------	
	cek_a_aug:	
	movzx ebx, byte[input+ecx]
	cmp ebx, 0
	je endLoop1
	cmp ebx, 10
	je endLoop1	
	cmp ebx, 65
	je cek_u_aug

;geser ecx	
	inc ecx
	jmp cek_a_aug
	
	cek_u_aug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_g_aug	
	jmp cek_a_aug
	cek_g_aug:
	inc ecx
	mov eax, 1	
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_aug
	dec ecx    			;ecx mundur 1	
	jmp cek_a_aug
	
	end_aug:
	push ecx
	mov eax,1
	push eax	
	mov ecx, aug
	mov edx, [len_aug]
	call cetak
	pop eax
	pop ecx	
	inc ecx
	jmp loop1
;_____________________________________ end aug ______________________________________________;
	
;______________________________________cek baris u_______________________________ char ke 2 u
	cek_u:
	;inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_uu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	
	cek_c:
	;inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je cek_cu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	
	cek_a:
	;inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je cek_au
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1

	cek_g:
	;inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je cek_gu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1

;------------------------------------------------------cek u 2-------------------------------------;
	cek_uu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_uuu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_uc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je cek_ucu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ua:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je cek_uau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je cek_ugu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;__________________________________________________________________________________  cek c*

	cek_cu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_cuu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je cek_ccu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ca:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je cek_cau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je cek_cgu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
;___________________________________________________________________________________________________ cek a*

	cek_au:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_auu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_ac:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je cek_acu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_aa:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je cek_aau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ag:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je cek_agu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
;___________________________________________________________________________________________________ cek g*

	cek_gu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je cek_guu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_gc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je cek_gcu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ga:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je cek_gau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je cek_ggu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
;---------------------------------------cek u 3------------------------------------;
;---------------------------------------cek uu 3------------------------------------;
	cek_uuu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_uuu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_uuc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_uuc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_uua:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_uua
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_uug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_uug
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek uc 3------------------------------------;	
	cek_ucu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_ucu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ucc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_ucc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_uca:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_uca
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ucg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_ucg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ua 3------------------------------------;
	cek_uau:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_uau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_uac:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_uac
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_uaa:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_uaa
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_uag:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_uag
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ug 3------------------------------------;

	cek_ugu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_ugu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ugc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_ugc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_uga:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_uga
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ugg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_ugg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
;________________________________________________________________________cek c 3

    cek_cuu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_cuu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_cuc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_cuc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cua:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_cua
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_cug
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek uc 3------------------------------------;	
	cek_ccu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_ccu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ccc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_ccc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_cca:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_cca
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ccg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_ccg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ua 3------------------------------------;
	cek_cau:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_cau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cac:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_cac
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_caa:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_caa
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cag:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_cag
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ug 3------------------------------------;

	cek_cgu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_cgu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cgc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_cgc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_cga:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_cga
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_cgg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_cgg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;________________________________________________________________________cek a**
 
    cek_auu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_auu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_auc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_auc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_aua:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_aua
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_aug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_aug
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek uc 3------------------------------------;	
	cek_acu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_acu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_acc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_acc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_aca:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_aca
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_acg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_acg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ua 3------------------------------------;
	cek_aau:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_aau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_aac:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_aac
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_aaa:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_aaa
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_aag:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_aag
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ug 3------------------------------------;

	cek_agu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_agu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_agc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_agc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_aga:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_aga
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_agg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_agg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;________________________________________________________________________cek g**
 
    cek_guu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_guu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_guc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_guc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gua:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_gua
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gug:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_gug
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek gc*------------------------------------;	
	cek_gcu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_gcu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gcc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_gcc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_gca:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_gca
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gcg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_gcg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek ga 3------------------------------------;
	cek_gau:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_gau
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gac:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_gac
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_gaa:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_gaa
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_gag:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_gag
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------------------------cek gg 3------------------------------------;

	cek_ggu:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 85
	je end_ggu
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ggc:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 67
	je end_ggc
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

	cek_gga:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 65
	je end_gga
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx
	
	cek_ggg:
	inc ecx
	movzx ebx, byte[input+ecx]
	cmp ebx, 71
	je end_ggg
	cmp ebx, 10
	je endLoop1
	cmp ebx, 0
	je endLoop1
	dec ecx

;---------------------selesai u----------------------;
	end_uuu:
	push ecx
	mov ecx, uuu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_uuc:
	push ecx
	mov ecx, uuc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_uua:
	push ecx
	mov ecx, uua
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_uug:
	push ecx
	mov ecx, uug
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	;--------------------------------ucu
	end_ucu:
	push ecx
	mov ecx, ucu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_ucc:
	push ecx
	mov ecx, ucc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_uca:
	push ecx
	mov ecx, uca
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_ucg:
	push ecx
	mov ecx, ucg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;-----------------------------uau
	end_uau:
	push ecx
	mov ecx, uau
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_uac:
	push ecx
	mov ecx, uac
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_uaa:
	push ecx
	mov ecx, uaa
	mov edx, [len_stop]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,0	
	jmp loop1

	end_uag:
	push ecx
	mov ecx, uag
	mov edx, [len_stop]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,0	
	jmp loop1
	
	;--------------------ugu
	end_ugu:
	push ecx
	mov ecx, ugu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_ugc:
	push ecx
	mov ecx, ugc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_uga:
	push ecx
	mov ecx, uga
	mov edx, [len_stop]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,0	
	jmp loop1

	end_ugg:
	push ecx
	mov ecx, ugg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
;___________________________________________________________________________end c**
	end_cuu:
	push ecx
	mov ecx, cuu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_cuc:
	push ecx
	mov ecx, cuc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cua:
	push ecx
	mov ecx, cua
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cug:
	push ecx
	mov ecx, cug
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	;--------------------------------ucu
	end_ccu:
	push ecx
	mov ecx, ccu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_ccc:
	push ecx
	mov ecx, ccc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cca:
	push ecx
	mov ecx, cca
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_ccg:
	push ecx
	mov ecx, ccg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;_____________________________________________________cau
	end_cau:
	push ecx
	mov ecx, cau
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_cac:
	push ecx
	mov ecx, cac
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_caa:
	push ecx
	mov ecx, caa
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cag:
	push ecx
	mov ecx, cag
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;--------------------ugu
	end_cgu:
	push ecx
	mov ecx, cgu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_cgc:
	push ecx
	mov ecx, cgc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cga:
	push ecx
	mov ecx, cga
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_cgg:
	push ecx
	mov ecx, cgg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1 

;________________________________________________________________________end a**

	end_auu:
	push ecx
	mov ecx, auu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_auc:
	push ecx
	mov ecx, auc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_aua:
	push ecx
	mov ecx, aua
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	;--------------------------------ucu
	end_acu:
	push ecx
	mov ecx, acu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_acc:
	push ecx
	mov ecx, acc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_aca:
	push ecx
	mov ecx, aca
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_acg:
	push ecx
	mov ecx, acg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;_____________________________________________________cau
	end_aau:
	push ecx
	mov ecx, aau
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_aac:
	push ecx
	mov ecx, aac
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_aaa:
	push ecx
	mov ecx, a3
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_aag:
	push ecx
	mov ecx, aag
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;--------------------ugu
	end_agu:
	push ecx
	mov ecx, agu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_agc:
	push ecx
	mov ecx, agc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_aga:
	push ecx
	mov ecx, aga
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_agg:
	push ecx
	mov ecx, agg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1 

;________________________________________________________________________end g**

	end_guu:
	push ecx
	mov ecx, guu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_guc:
	push ecx
	mov ecx, guc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gua:
	push ecx
	mov ecx, gua
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gug:
	push ecx
	mov ecx, gug
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;--------------------------------ucu
	end_gcu:
	push ecx
	mov ecx, gcu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_gcc:
	push ecx
	mov ecx, gcc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gca:
	push ecx
	mov ecx, gca
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gcg:
	push ecx
	mov ecx, gcg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;_____________________________________________________cau
	end_gau:
	push ecx
	mov ecx, gau
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_gac:
	push ecx
	mov ecx, gac
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gaa:
	push ecx
	mov ecx, gaa
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gag:
	push ecx
	mov ecx, gag
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1
	
	;--------------------ugu
	end_ggu:
	push ecx
	mov ecx, ggu
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]	
	mov eax,1	
	jmp loop1
	
	end_ggc:
	push ecx
	mov ecx, ggc
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_gga:
	push ecx
	mov ecx, gga
	mov edx, [len_kodon]
	call cetak
	pop ecx
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	end_ggg:
	push ecx
	mov ecx, ggg
	mov edx, [len_kodon]
	call cetak
	pop ecx	
	inc ecx
	movzx ebx, byte[input+ecx]
	mov eax,1	
	jmp loop1

	endLoop1:
	mov ecx, NewLine
	mov edx, 2
	call cetak
	ret



	
