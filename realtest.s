; let's do this.

.org $8000

reset:
    clc             ; native mode
    xce
    rep #$10        ; X/Y 16-bit
    sep #$20        ; A 8-bit

    ; Clear PPU registers
    ldx #$33
@loop:  stz $2100,x
    stz $4200,x
    dex
    bpl @loop

    ; Set background color to $03E0
    lda #$E0
    sta $2122
    lda #$03
    sta $2122

    ; Maximum screen brightness
    lda #$0F
    sta $2100

forever:
    jmp forever


.org $ffc0
    .byte "CA65 EXAMPLE" ; ROM name

.org $ffd5
    .byte $30            ; LoROM, fast-capable
    .byte 0              ; no battery RAM
    .byte $07            ; 128K ROM
    .byte 0,0,0,0
    .word $AAAA,$5555    ; dummy checksum and complement

.org $ffe0
    .word 0, 0, 0, 0, 0, 0, 0, 0
    .word 0, 0, 0, 0, 0, 0, reset, 0