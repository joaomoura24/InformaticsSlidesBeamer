# School of Informatics Beamer Template

Informatics is a simple Beamer theme for producing presentation slides with Latex  that replicate the existing [School of Informatics PowerPoint Template](https://web.inf.ed.ac.uk/infweb/admin/school-visual-identity-logo).
It uses the colours of The University of Edinburgh's logo throughout for text and titles.
See the resulting [sample PDF](talk.pdf) for how the theme looks like.
Both visual and automation improvements are very welcomed through Issues or Pull Requests.

## Compile

You can use your favourite Latex editor/compiler, but for quick testing you can simply use the provided Makefile, with
```
make
```
for generating the PDF and
```
make bib
```
for generating the references.
You might need to make twice to generate the correct pdf, given the generation of the [tikz](https://en.wikibooks.org/wiki/LaTeX/PGF/TikZ) pictures.
