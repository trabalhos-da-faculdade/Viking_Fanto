; 	LENDO OS VALORES DE UM VETOR
; 	IREMOS CONSTRUIR UM WHILE QUE IRÁ PASSAR POR CADA POSIÇÃO
;	CARREGAREMOS O VETOR NO REGISTRADOR 4
;	CARREGAREMOS O CONTADOR EM ZERO NO REGISTRADOR 1
;	CARREGAREMOS O TAMANHO DO VETOR NO REGISTRADOR 5
;	DENTRO DO WHILE:
;		FAZENDO O CALCULO DA DISTANCIA COM O CONTADOR: d = r1 * 2
;		ADICIONANDO O VALOR DA POSIÇÃO NO REGISTRADOR 2 E IMPRIMINDO
;		INCREMENTANDO O CONTADOR
;		VERIFICANDO SE O VALOR DE R1 É MAIOR OU IGUAL AO TAMANHO DO VETOR
main
	ldi	r4,vet
	ldi	r1,0
	ldi	r5,5
while
	add	r4,r1
	add	r4,r1
	ldw	r2,r4
	ldi	at,0xf002
	stw	r2,at
	add	r1,1
	slt	r3,r1,r5
	bnz	r3,while
	bez	r3,end
end
	hcf

vet	0 1 2 3 4 5
	
	
