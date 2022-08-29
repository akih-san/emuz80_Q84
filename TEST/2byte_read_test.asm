ROMTOP	EQU	0000H
RAMTOP	EQU	0C000H
STACK	EQU	0C100H
;
;	RESET
	ORG	ROMTOP
;
;	START
	LD HL,0C000H

loop:
	LD A,(HL)	;1 byte read
	LD BC,(0C000H)	;2 byte read
	INC (HL)
	JR loop

	END
