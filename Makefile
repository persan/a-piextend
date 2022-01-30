
all:src/gen/piextend_h.ads

src/gen/piextend_h.ads:Makefile all.sed
	@rm -rf src/gen .gen
	@mkdir -p  src/gen .gen
	@echo "#include <pixtend.h>" >.gen/gen.c
	cd .gen; gcc -c -fdump-ada-spec  -fada-spec-parent=Pixtend gen.c
	sed --in-place --file all.sed .gen/*.ads
	cp .gen/pixtend-wir*.ads .gen/pixtend-pix*.ads .gen/pixtend-sof*.ads src/gen
	gprbuild -p -P piextend.gpr 

install:
	gprinstall -p -P piextend.gpr
uninstall:
	gprinstall --uninstall -p -P piextend.gpr
