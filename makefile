index.html: index.text header.html footer.html
	cat header.html > index.html 
	markdown index.text >> index.html
	cat footer.html >> index.html
