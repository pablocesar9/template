# Initialization

Clonar el repositorio

Para guadar la tesis real, convertir la carpeta que lo contiene en un repositorio aparte que tiene como submodulo a template.

En la carpeta contenedora:
git init

git submodule add <URL_DE_TU_REPOSITORIO_SECUNDARIO> nombre-de-la-carpeta
El otro repositorio es del template y la carpeta se llama template

git add .
git commit -m "Agregando repositorio plantilla"

Luego conectar el repositorio contenedor a la nube



Copiar el Makefile y el .latexmkrc a un nivel superior de carpeta. Además, copiar personalization-example.tex a un nivel superior y renombrar como personalization.tex

Para edición completa:
Copiar todo el contenido con el sufijo -example y quitar esta palabra y editar directorios al que apunta en personalization

Opcional:
conectar zotero al archivo de bibliografía con biblatex

