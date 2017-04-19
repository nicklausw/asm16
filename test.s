; stolen from bass

asl
clc
cld
cli
clv
dec
dex
dey
inc
inx
iny
lsr
nop
pha
phb
phd
phk
php
phx
phy
pla
plb
pld
plp
plx
ply
rol
ror
rti
rtl
rts
sec
sed
sei
stp
tad
tas
tax
tay
tda
tsa
tsx
txa
txs
txy
tya
tyx
wai
xba
xce

tcd
tdc

lsr #$FE
rol #$FE
ror #$FE

ora #$FEDC
ora #$FE
ora $FE,s
ora ($FE,s),y
ora ($FE,x)
ora ($FE),y
ora [$FE],y
ora ($FE)
ora [$FE]
ora $FEDC,y
ora $FEDCBA,x
ora $FEDC,x
ora $FE,x
ora $FEDCBA
ora $FEDC
ora $FE

ora #$FEDC
ora #$FE
ora $FEDCBA,x
ora $FEDC,x
ora $FE,x
ora $FEDCBA
ora $FEDC
ora $FE

and #$FEDC
and #$FE
and $FE,s
and ($FE,s),y
and ($FE,x)
and ($FE),y
and [$FE],y
and ($FE)
and [$FE]
and $FEDC,y
and $FEDCBA,x
and $FEDC,x
and $FE,x
and $FEDCBA
and $FEDC
and $FE

and #$FEDC
and #$FE
and $FEDCBA,x
and $FEDC,x
and $FE,x
and $FEDCBA
and $FEDC
and $FE

eor #$FEDC
eor #$FE
eor $FE,s
eor ($FE,s),y
eor ($FE,x)
eor ($FE),y
eor [$FE],y
eor ($FE)
eor [$FE]
eor $FEDC,y
eor $FEDCBA,x
eor $FEDC,x
eor $FE,x
eor $FEDCBA
eor $FEDC
eor $FE

eor #$FEDC
eor #$FE
eor $FEDCBA,x
eor $FEDC,x
eor $FE,x
eor $FEDCBA
eor $FEDC
eor $FE

adc #$FEDC
adc #$FE
adc $FE,s
adc ($FE,s),y
adc ($FE,x)
adc ($FE),y
adc [$FE],y
adc ($FE)
adc [$FE]
adc $FEDC,y
adc $FEDCBA,x
adc $FEDC,x
adc $FE,x
adc $FEDCBA
adc $FEDC
adc $FE

adc #$FEDC
adc #$FE
adc $FEDCBA,x
adc $FEDC,x
adc $FE,x
adc $FEDCBA
adc $FEDC
adc $FE

sta $FE,s
sta ($FE,s),y
sta ($FE,x)
sta ($FE),y
sta [$FE],y
sta ($FE)
sta [$FE]
sta $FEDC,y
sta $FEDCBA,x
sta $FEDC,x
sta $FE,x
sta $FEDCBA
sta $FEDC
sta $FE

sta $FEDCBA,x
sta $FEDC,x
sta $FE,x
sta $FEDCBA
sta $FEDC
sta $FE

lda #$FEDC
lda #$FE
lda $FE,s
lda ($FE,s),y
lda ($FE,x)
lda ($FE),y
lda [$FE],y
lda ($FE)
lda [$FE]
lda $FEDC,y
lda $FEDCBA,x
lda $FEDC,x
lda $FE,x
lda $FEDCBA
lda $FEDC
lda $FE

lda #$FEDC
lda #$FE
lda $FEDCBA,x
lda $FEDC,x
lda $FE,x
lda $FEDCBA
lda $FEDC
lda $FE

cmp #$FEDC
cmp #$FE
cmp $FE,s
cmp ($FE,s),y
cmp ($FE,x)
cmp ($FE),y
cmp [$FE],y
cmp ($FE)
cmp [$FE]
cmp $FEDC,y
cmp $FEDCBA,x
cmp $FEDC,x
cmp $FE,x
cmp $FEDCBA
cmp $FEDC
cmp $FE

cmp #$FEDC
cmp #$FE
cmp $FEDCBA,x
cmp $FEDC,x
cmp $FE,x
cmp $FEDCBA
cmp $FEDC
cmp $FE

sbc #$FEDC
sbc #$FE
sbc $FE,s
sbc ($FE,s),y
sbc ($FE,x)
sbc ($FE),y
sbc [$FE],y
sbc ($FE)
sbc [$FE]
sbc $FEDC,y
sbc $FEDCBA,x
sbc $FEDC,x
sbc $FE,x
sbc $FEDCBA
sbc $FEDC
sbc $FE

sbc #$FEDC
sbc #$FE
sbc $FEDCBA,x
sbc $FEDC,x
sbc $FE,x
sbc $FEDCBA
sbc $FEDC
sbc $FE

asl $FEDC,x
asl $FE,x
asl $FEDC
asl $FE

asl $FEDC,x
asl $FE,x
asl $FEDC
asl $FE

lsr $FEDC,x
lsr $FE,x
lsr $FEDC
lsr $FE

lsr $FEDC,x
lsr $FE,x
lsr $FEDC
lsr $FE

rol $FEDC,x
rol $FE,x
rol $FEDC
rol $FE

rol $FEDC,x
rol $FE,x
rol $FEDC
rol $FE

ror $FEDC,x
ror $FE,x
ror $FEDC
ror $FE

ror $FEDC,x
ror $FE,x
ror $FEDC
ror $FE

inc $FEDC,x
inc $FE,x
inc $FEDC
inc $FE

inc $FEDC,x
inc $FE,x
inc $FEDC
inc $FE

dec $FEDC,x
dec $FE,x
dec $FEDC
dec $FE

dec $FEDC,x
dec $FE,x
dec $FEDC
dec $FE

bit #$FEDC
bit #$FE
bit $FEDC,x
bit $FE,x
bit $FEDC
bit $FE

bit #$FEDC
bit #$FE
bit $FEDC,x
bit $FE,x
bit $FEDC
bit $FE

cpx #$FEDC
cpx #$FE
cpx $FEDC
cpx $FE

cpx #$FEDC
cpx #$FE
cpx $FEDC
cpx $FE

cpy #$FEDC
cpy #$FE
cpy $FEDC
cpy $FE

cpy #$FEDC
cpy #$FE
cpy $FEDC
cpy $FE

ldx #$FEDC
ldx #$FE
ldx $FEDC,y
ldx $FE,y
ldx $FEDC
ldx $FE

ldx #$FEDC
ldx #$FE
ldx $FEDC,y
ldx $FE,y
ldx $FEDC
ldx $FE

ldy #$FEDC
ldy #$FE
ldy $FEDC,x
ldy $FE,x
ldy $FEDC
ldy $FE

ldy #$FEDC
ldy #$FE
ldy $FEDC,x
ldy $FE,x
ldy $FEDC
ldy $FE

stx $FE,y
stx $FEDC
stx $FE

stx $FEDC
stx $FE

sty $FE,x
sty $FEDC
sty $FE

sty $FEDC
sty $FE

stz $FEDC,x
stz $FE,x
stz $FEDC
stz $FE

stz $FEDC,x
stz $FE,x
stz $FEDC
stz $FE

trb $FEDC
trb $FE

trb $FEDC
trb $FE

tsb $FEDC
tsb $FE

tsb $FEDC
tsb $FE

jmp (JMPINDIND,x)
jmp (JMPIND)
JMPINDIND:
jmp [JMPABSIND]
JMPIND:
jmp JMPABS
JMPABSIND:
jml JMLLONG
JMPABS:

jsr (JSRINDIND,x)
JMLLONG:
jsr JSRABS
JSRINDIND:
jsl JSLLONG
JSRABS:

brl BRLREL
JSLLONG:
bra BRAREL
BRLREL:
bpl BPLREL
BRAREL:
bmi BMIREL
BPLREL:
bvc BVCREL
BMIREL:
bvs BVSREL
BVCREL:
bcc BCCREL
BVSREL:
bcs BCSREL
BCCREL:
bne BNEREL
BCSREL:
beq BEQREL
BNEREL:

mvp $FE=$DC
BEQREL:
mvn $FE=$DC

pea $FEDC
pei ($FE)
per $FEDC

rep #$FE
sep #$FE

brk #$FE
cop #$FE
wdm #$FE