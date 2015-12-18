section .data

	pesan db 'Maaf DNA yang kamu masukan salah',10,0 
	len_pesan dd $-pesan
	
	welcome db "./welcome.txt",0
	
	NewLine db "",10,0
	
	text db "Masukan DNA : ",0
	len_text equ $-text
	
	text1 db "Hasil Konversi ke mRNA : ",0
	len_text1 equ $-text1
	
	text2 db "Hasil Konversi ke Asam Amino : ",0
	len_text2 equ $-text2
	
	text3 db "Apakah anda ingin mengulang? (Y/N) :",0
	len_text3 equ $-text3
	
	sep db "-------------------------------------------------------------------------------",10,0
	len_sep equ $-sep
	
	pesan_end db "===================================Terima Kasih===================================",10,0
	len_pesan_end equ $-pesan_end
	
	konfirm_salah db "Maaf Masukan Salah, hanya Y atau N",10,0
	len_konfirm_salah equ $-konfirm_salah
	
	uuu db "Phe ",0
	uuc db "Phe ",0
	uua db "Leu ",0
	uug db "Leu ",0
	ucu db "Ser ",0
	ucc db "Ser ",0
	uca db "Ser ",0
	ucg db "Ser ",0
	uau db "Tyr ",0
	uac db "Tyr ",0
	uaa db "Stop ",0
	uag db "Stop ",0
	len_stop dd $-uag
	ugu db "Cys ",0
	ugc db "Cys ",0
	uga db "Stop ",0
	ugg db "Trp ",0

	cuu db "Leu ",0
	cuc db "Leu ",0
	cua db "Leu ",0
	cug db "Leu ",0
	ccu db "Pro ",0
	ccc db "Pro ",0
	cca db "Pro ",0
	ccg db "Pro ",0
	cau db "His ",0
	cac db "His ",0
	caa db "Gln ",0
	cag db "Gln ",0
	cgu db "Arg ",0
	cgc db "Arg ",0
	cga db "Arg ",0
	cgg db "Arg ",0

	auu db "Ile ",0
	auc db "Ile ",0
	aua db "Ile ",0
	aug db "Start ",0
	len_aug dd $-aug
	acu db "Thr ",0
	acc db "Thr ",0
	aca db "Thr ",0
	acg db "Thr ",0
	aau db "Asn ",0
	aac db "Asn ",0
	a3 db "Lys ", 0
	aag db "Lys ",0
	agu db "Ser ",0
	agc db "Ser ",0
	aga db "Arg ",0
	agg db "Arg ",0

	guu db "Val ",0
	guc db "Val ",0
	gua db "Val ",0
	gug db "Val ",0
	gcu db "Ala ",0
	gcc db "Ala ",0
	gca db "Ala ",0
	gcg db "Ala ",0
	gau db "Asp ",0
	gac db "Asp ",0
	gaa db "Glu ",0
	gag db "Glu ",0
	ggu db "Gly ",0
	ggc db "Gly ",0
	gga db "Gly ",0
	ggg db "Gly ",0
	len_kodon dd $-ggg
 	;input db "AUGUUA",0
 timeval:
		tv_sec dd 0
		tv_usec dd 0
	
section .bss
	 input resb MAX
	 konfirm resb 1
	 lokasifile resd 1
     	 kata_a resb MAX
