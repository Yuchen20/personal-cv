$ErrorActionPreference = "Stop"

latexmk -pdf -interaction=nonstopmode -halt-on-error resume-en.tex
xelatex -interaction=nonstopmode -halt-on-error resume-zh.tex
xelatex -interaction=nonstopmode -halt-on-error resume-zh.tex

New-Item -ItemType Directory -Force output | Out-Null
Copy-Item -Force resume-en.pdf output/Yuchen_Mao_CV_EN.pdf
Copy-Item -Force resume-zh.pdf output/Yuchen_Mao_CV_ZH.pdf
