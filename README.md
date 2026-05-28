# Personal CV

LaTeX source for English and Chinese versions of Yuchen Mao's CV.

## Structure

- `resume-en.tex` - English CV entry point.
- `resume-zh.tex` - Chinese CV entry point, built with XeLaTeX for Chinese font support.
- `sections/en/` - English CV content.
- `sections/zh/` - Chinese CV content.
- `style/` - Shared LaTeX style and header.
- `output/` - Final generated PDFs.

## Build

On Windows PowerShell:

```powershell
.\build.ps1
```

Manual commands:

```powershell
latexmk -pdf -interaction=nonstopmode -halt-on-error resume-en.tex
xelatex -interaction=nonstopmode -halt-on-error resume-zh.tex
xelatex -interaction=nonstopmode -halt-on-error resume-zh.tex
```
