# Configuración
MAIN     = template/base/document
OUTDIR   = pdf
TEXFLAGS = -pdf -outdir=$(OUTDIR) -interaction=nonstopmode

# Targets
.PHONY: all watch clean purge

# Compilación completa
all:
	latexmk $(TEXFLAGS) -f -usepretex="\def\isfinal{1}" $(MAIN)

# Para ver el log bonito
# texlogsieve pdf/document.log

# Modo watch: recompila automáticamente al guardar
watch:
	latexmk $(TEXFLAGS) -pvc $(MAIN)

# Modo para compilar pese a que crea que no hay cambios
force:
	latexmk $(TEXFLAGS) -f -g -usepretex="\def\isfinal{1}" $(MAIN)

# Compilar solo un capítulo (uso: make chapter FILE=tex/chapter-01)
chapter:
	latexmk $(TEXFLAGS) -usepretex="\includeonly{$(FILE)}" $(MAIN)

# Limpia auxiliares pero conserva el PDF
clean:
	latexmk -outdir=$(OUTDIR) -c $(MAIN)

# Limpia todo incluyendo el PDF
purge:
	latexmk -outdir=$(OUTDIR) -C $(MAIN)

