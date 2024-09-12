WORKDIR = $(shell pwd)

.PHONY: help diapositives apunts

help:
	@echo "make help - Show this help"
	@echo "make diapositives - Create slides in PDF"
	@echo "make apunts - Create apunts in PDF"

diapositives:
	@echo "Creant les diapositives..."
	WORKDIR="$(WORKDIR)" ;\
	$(MAKE) -C $$WORKDIR -f Makefile.diapositives all
	@echo "Diapositives creades i guardades a diapositives."

apunts:
	@echo "Creant els apunts..."
	WORKDIR="$(WORKDIR)" ;\
	$(MAKE) -C $$WORKDIR -f Makefile.apunts
	@echo "Apunts creats."