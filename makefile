all: asm16
	asm16 test/main.s test/test.sfc
asm16: asm16.c
clean:
	$(RM) asm16 test/test.sfc