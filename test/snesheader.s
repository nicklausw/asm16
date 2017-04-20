.org $ffc0
 romname:
 .byte "ASMSIXTEENTEST" ; rom name
 
 ; make sure the rom name length is covered (thanks tepples)
  .if $ - romname < 21
    .dsb romname + 21 - $, $20  ; space padding
  .endif
  
 .byte $30 ; lorom fastrom
 .byte $00 ; no battery ram
 .byte $08 ; 256K rom


.org $ffe0
 .word 0, 0, 0, 0, 0, 0, 0, 0
 .word 0, 0, 0, 0, 0, 0, reset, 0
