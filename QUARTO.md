# Quarto

## Install Quarto (One-Time)

Install Quarto: <https://quarto.org/docs/get-started/>.

Add to VS Code Path (as needed, use local machine path to Quarto)

```shell
$env:PATH -split ';'
$env:PATH += ";C:\Program Files\Quarto\bin"
```

## Install Packages (One-Time)

```shell
quarto install tinytex
```

## Build 

```shell
cd 2025_12_theory_paper
quarto render 00_cep_formal_semantics.tex --to pdf
quarto render paper.qmd --to pdf
```