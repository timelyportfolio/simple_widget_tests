all: index.html

index.html: htmlwidgets/trianglify.js trianglify.R index.R
	Rscript -e "library(htmlwidgets); source('index.R'); save_html2(html)"