for f in *.ipynb; do jupyter nbconvert --to markdown $f --execute;done
for f in *.md; do pandoc -s $f -o $f --to gfm;done
pandoc -s $(ls -v *.md) -o merge.md --to gfm