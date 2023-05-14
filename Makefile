gen:
	jupyter nbconvert --to html "Exercicio_1/Exercicio_1.ipynb" --output exercicio_1.html --output-dir .
	jupyter nbconvert --to html "Exercicio_2/Exercicio_2.ipynb" --output exercicio_2.html --output-dir .
	markdown Exercicio_3/Exercicio_3.md --flavor gfm --title "foo" --stylesheet github-markdown-css > exercicio_3.html
