# LaTeX template

A template for creating latex projects

# Setup (optional)

Install [Visual Studio Code](https://code.visualstudio.com/Download), and install the
[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.

Setup the `.vscode/settings.json` file with the contents of the
`.vscode/settings.json.sample` file

```bash
$ cp .vscode/settings.json.sample .vscode/settings.json
```

# Compile the LaTeX project with TeX Live
```bash
$ make all
```


# Tesis PUCP — Plantilla LaTeX

Plantilla de tesis en LaTeX para la Pontificia Universidad Católica del Perú.

---

## Requisitos

- [TeX Live](https://www.tug.org/texlive/) (distribución LaTeX)
- [Visual Studio Code](https://code.visualstudio.com/) + extensión [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) *(opcional pero recomendado)*
- [Zotero](https://www.zotero.org/) + plugin [Better BibTeX](https://github.com/retorquere/zotero-better-bibtex) *(opcional, para gestión de referencias)*

---

## Estructura del proyecto

### Plantilla

```
template/
├── base/
│   └── format/               # Formatos de las secciones del proyecto
│   └── document.tex          # Documento principal (preámbulo e includes)
├── bib-example/
│   └── bibliography-example.bib      # Referencias bibliográficas de ejemplo
├── images-example/                   # Imágenes y figuras de ejemplo
├── tex-example/                      # Capítulos de la tesis de ejemplo
│   ├── introduccion.tex
│   ├── capitulo1.tex   
│   └── ...             
├── .gitignore
├── Makefile                # Makefile para copiarse
└── README.md
```

### Wrapper
```
tesis-latex/
├── bib/
│   └── bibliography.bib      # Referencias bibliográficas
├── images/                   # Imágenes y figuras
├── tex/                      # Capítulos de la tesis
│   ├── introduccion.tex
│   ├── capitulo1.tex   
│   └── ...             
├── Makefile                # Makefile copiado
```

---

## Instalación

### Inicialización

Descargar el repositorio

Copiar el Makefile y el .latexmkrc a un nivel superior de carpeta. Además, copiar personalization-example.tex a un nivel superior y renombrar como personalization.tex

Ejecutar make all
```

### 3. Configurar Zotero *(opcional)*

Si usas Zotero para gestionar referencias:

1. Instala el plugin **Better BibTeX** desde sus [releases en GitHub](https://github.com/retorquere/zotero-better-bibtex/releases)
2. En Zotero, click derecho sobre tu colección → **Exportar colección**
3. Formato: `Better BibLaTeX`, activa **"Mantener actualizado"**
4. Guarda como `bib/bibliography.bib` dentro del proyecto

Cada vez que agregues una referencia en Zotero, el archivo `.bib` se actualizará automáticamente.

---

## Compilación

### 
```

---

## Cómo agregar un capítulo

1. Crea un archivo `.tex` en la carpeta `tex/`:

```bash
touch tex/capitulo2.tex
```

2. Inclúyelo en `base/document.tex`:

```latex
\include{tex/capitulo2}
```

### Compilar solo un capítulo *(para mayor velocidad)*

En `base/document.tex`, descomenta la línea correspondiente:

```latex
\includeonly{tex/capitulo2}  % solo compila este capítulo
```

---

## Cómo citar referencias

Las claves de citación se encuentran en `bib/bibliography.bib`. Usa los siguientes comandos en el texto:

```latex
Según \textcite{garcia2023} esto ocurre así...

Esto ha sido demostrado \parencite{garcia2023}.

Varios estudios coinciden \parencite{autor2020, otro2021}.
```

Para ver la bibliografía al final del documento:

```latex
\printbibliography
```

---

## Cómo agregar imágenes

Coloca las imágenes en la carpeta `images/` y refiérelas así:

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{images/mi_imagen.png}
    \caption{Descripción de la imagen}
    \label{fig:mi_imagen}
\end{figure}
```

---

## Datos de la tesis

Edita los siguientes campos en `base/document.tex`:

```latex
\title{Título de tu tesis}
\author{Tu nombre completo}
\date{Lima, 2026}
```

---

## Notas

- El PDF generado **no se versiona en Git** (está en `.gitignore`). Solo se versiona el código fuente `.tex`.
- Los archivos auxiliares (`.aux`, `.log`, `.toc`, etc.) tampoco se versionan.
- Si tienes errores de compilación, revisa el archivo `document.log` para ver el detalle.
