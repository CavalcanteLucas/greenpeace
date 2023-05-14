gen_1:
	jupyter nbconvert --to html "Exercicio_1/Exercicio_1.ipynb" --output exercicio_1.html --output-dir .

gen_2:
	jupyter nbconvert --to html "Exercicio_2/Exercicio_2.ipynb" --output exercicio_2.html --output-dir .

gen_3:
	markdown Exercicio_3/Exercicio_3.md --title "Exercício 3" > exercicio_3.html

gen:
	make gen_1
	make gen_2
	make gen_3
