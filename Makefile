WORKDIR = $(shell pwd)

.PHONY: help diapositives apunts diapositives-annotacions

help:
	@echo "make help - Show this help"
	@echo "make diapositives - Create slides in PDF"
	@echo "make apunts - Create apunts in PDF"

diapositives:
	@echo "Creant les diapositives..."
	WORKDIR="$(WORKDIR)" ;\
	$(MAKE) -C $$WORKDIR -f Makefile.diapositives all
	@echo "Diapositives creades i guardades a diapositives."

diapositives-annotacions:
	@echo "Creant les diapositives amb les anotacions..."
	WORKDIR="$(WORKDIR)" ;\
	$(MAKE) -C $$WORKDIR -f Makefile.diapositives all GENERATE_NOTES=yes
	@echo "Diapositives amb notes d'orador."

apunts:
	@echo "Creant els apunts..."
	WORKDIR="$(WORKDIR)" ;\
	$(MAKE) -C $$WORKDIR -f Makefile.apunts all
	@echo "Apunts creats."