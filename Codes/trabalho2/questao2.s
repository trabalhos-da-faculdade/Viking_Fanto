;	QUESTÃO 2 DO TRABALHO DE ORGARC
; COMO O CÓDIGO FUNCIONA:
; DO VETOR DE STRINGS EU PEGO O CARACTERE QUE ESTA NO INICIO E NO FIM
; SUBTRAIO DO TAMANHO MÁXIMO DO STRING PARA PODER PEGAR A OUTRA POSIÇÃO ANTERIOR
; ADICIONO DO CONTADOR PARA PEGAR O PROXIMO CARACTERE
; VERIFICO SE A LETRA É COMPATIVEL UMA COM A OUTRA
; DEPOIS VERIFICO SE O TAMANHO SE TORNOU MENOR QUE O CONTADOR, INDO ASSIM NO FIM
; O PROGRAMA RESPONDE COM UM SE A STRING FOR UM PALINDROMO
; O PROGRAMA RESPONDE COM UM ZERO SE A STRING NÃO FOR UM PALINDROMO
main
;	CARREGANDO O STRING,TAMANHO E CONTADOR
	ldi	r4,string
	ldw	r3,cont
	ldw	r6,size
;	CRIANDO LOOP PARA PODER VERIFICAR LETRA POR LETRA
loop
;	INDO NA ULTIMA POSIÇÃO DO VETOR E SALVANDO O CARACTERE EM OUTRO REG.
	add	r4,r6
	ldb	r1,r4
;	SUBTRAINDO 1 DO TAMANHO MÁXIMO DO VETOR NO R6
	sub	r6,1
;	INDO NA PRIMEIRA POSIÇÃO DO VETOR E SALVANDO O CARACTERE EM OUTRO REG.
	add	r4,r3
	ldb	r2,r4
;	SOMANDO 1 NO CONTADOR EM R3
	add r3,1
;	VERIFICANDO SE AS LETRAS SÃO COMPATÍVEIS
	sub	r5,r1,r2
	bnz	r5,fail
;	VERIFICANDO SE O TAMANHO É MENOR QUE O CONTADOR
	slt	r5,r6,r3
;	SE O SLT DER ZERO(R6 > R3) ELE ENTRA NO LOOP DE NOVO
	bez	r5,loop
;	SE O SLT DER 1(R6 < R3) ELE TERMINA O PROGRAMA
	bnz	r5,fim

fail
	ldi	r5,0
	stw	r5,0xf002
	hcf	
fim
	ldi	r5,1
	stw	r5,0xf002
	hcf	

string	"anna"
size	4
cont	0
