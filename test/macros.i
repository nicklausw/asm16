; thanks to espozo/koitsu/neviksti for the init snes routine!
; this is the only one i've found that really seems to work.

.macro InitializeSNES
  sei          ; Disable interrupts
  clc          ; Clear carry, used by XCE
  xce          ; Set 65816 native mode
  jmp +       ; Needed to set K (bank of PC) properly if MODE 21 is ever used;
               ; see official SNES developers docs, "Programming Cautions"

+:cld          ; Disable decimal mode
  phk          ; Push K (PC bank)
  plb          ; Pull B (data bank, i.e. data bank now equals PC bank)

  rep #$30     ; A=16, X/Y=16

  ; Note: this should correlate with ZEROPAGE in snes.cfg
  lda #$0000
  tcd          ; Set D = $0000 (direct page)

  ; Note: this should correlate with the top of BSS in snes.cfg
  ldx #$1fff
  txs          ; Set X = $1fff (stack pointer)


; Register initialisation values, per official Nintendo documentation

  sep #$20     ; A=8
  
  ; this fixes things somehow
  lda #$30
  sta $2130
  stz $2131
  stz $2132
  stz $2133
  
  lda #$80
  sta $2100
  stz $2101
  stz $2102
  stz $2103
  stz $2104
  stz $2105
  stz $2106
  stz $2107
  stz $2108
  stz $2109
  stz $210a
  stz $210b
  stz $210c
  stz $210d
  stz $210d
  stz $210e
  stz $210e
  stz $210f
  stz $210f
  stz $2110
  stz $2110
  stz $2111
  stz $2111
  stz $2112
  stz $2112
  stz $2113               
  stz $2113               
  stz $2114
  stz $2114
  lda #$80
  sta $2115
  stz $2116
  stz $2117
  stz $211a
  stz $211b
  lda #$01
  sta $211b
  stz $211c
  stz $211c
  stz $211d
  stz $211d
  stz $211e       
  lda #$01
  sta $211e
  stz $211f
  stz $211f
  stz $2120
  stz $2120
  stz $2121
  stz $2123
  stz $2124
  stz $2125
  stz $2126
  stz $2127
  stz $2128
  stz $2129
  stz $212a
  stz $212b
  stz $212c
  stz $212d
  stz $212e
  stz $212f
  stz $4200
  lda #$ff
  sta $4201
  stz $4202
  stz $4203
  stz $4204
  stz $4205
  stz $4206
  stz $4207
  stz $4208
  stz $4209
  stz $420a
  stz $420b
  stz $420c
  stz $420d

;ClearVram
  LDA #$80
  STA $2115         ;Set VRAM port to word access
  LDX #$1809
  STX $4300         ;Set DMA mode to fixed source, WORD to $2118/9
  LDX #$0000
  STX $2116         ;Set VRAM port address to $0000
  LDX #zero_fill_byte & $FFFF
  STX $4302         ;Set source address to $xx:0000
  LDA #zero_fill_byte >> 16
  STA $4304         ;Set source bank
  LDX #$0000
  STX $4305         ;Set transfer size to 65536 bytes
  LDA #$01
  STA $420B         ;Initiate transfer

;ClearPalette
  STZ $2121
  LDX #$0100
ClearPaletteLoop:
  STZ $2122
  STZ $2122
  DEX
  BNE ClearPaletteLoop

  ;**** clear Sprite tables ********

  STZ $2102	;sprites initialized to be off the screen, palette 0, character 0
  STZ $2103
  LDX #$0080
  LDA #$F0

_Loop08:
  STA $2104	;set X = 240
  STA $2104	;set Y = 240
  STZ $2104	;set character = $00
  STZ $2104	;set priority=0, no flips
  DEX
  BNE _Loop08

  LDX #$0020

_Loop09:
  STZ $2104		;set size bit=0, x MSB = 0
  DEX
  BNE _Loop09

  ;**** clear SNES RAM ********

  STZ $2181		;set WRAM address to $000000
  STZ $2182
  STZ $2183

  LDX #$8008
  STX $4300         ;Set DMA mode to fixed source, BYTE to $2180
  LDX #zero_fill_byte & $FFFF
  STX $4302         ;Set source offset
  LDA #zero_fill_byte >> 16
  STA $4304         ;Set source bank
  LDX #$0000
  STX $4305         ;Set transfer size to 64KBytes (65536 bytes)
  LDA #$01
  STA $420B         ;Initiate transfer

  LDA #$01          ;now zero the next 64KB (i.e. 128KB total)
  STA $420B         ;Initiate transfer
.endm
