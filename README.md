TODO:

- Create a docker to create slides
- Write help to create slides
- Automate slides date and presenter name
- Automate slides title

# Xebia Security Training Contents

> Note: Presenter's notes are in HTML comment. To view them, look at the raw file.


- File Tree
    - [AWS](./AWS/) : AWS Security Training
    - [GCP](./GCP/) : GCP Security Training


## Script to make slides

Install

- pandoc
- basictex


```bash
#!/usr/bin/env bash
set -o nounset # Treat unset variables as an error

filename=$(echo $1 | grep -o ^[a-zA-Z0-9_]*)
# use pandoc and beamer

pandoc "$1" -t beamer -o "$PWD/$filename.pdf" --filter mermaid-filter


# if you use specific pdf engine.
#pandoc "$1" -t beamer -o "$PWD/$filename.pdf" --pdf-engine=/Library/TeX/texbin/pdflatex --filter mermaid-filter

echo "$PWD/${filename}.pdf"
exit 0
```

