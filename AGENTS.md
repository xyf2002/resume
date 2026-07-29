# AGENTS.md — Resume (Yufeng Xia)

## Overview

Bilingual LaTeX CV project (English + Chinese) + 1-page academic CV variant.
Based on sb2nov/resume template. Template file `sourabh_bajaj_resume.tex` is NOT the active resume — actual CVs are in `yufeng_cv_en/` and `yufeng_cv_cn/`.

## Build

```sh
make          # build both EN and CN PDFs
make en       # build only English CV
make cn       # build only Chinese CV
make clean    # remove build/ and out/
```

- Requires `pdflatex` (TeX Live). Installed on this machine.
- Each PDF compiled **twice** (`pdflatex` × 2) to resolve cross-references.
- Intermediate files → `build/`. Final PDFs → `out/`:
  - `out/yufeng.pdf` (English CV)
  - `out/yufeng_cn.pdf` (Chinese CV)
- Academic CV has its own Makefile at `yufeng_cv_en/academic/Makefile`.

## Structure

### Three CV Variants

| Variant | Entrypoint | Sections | Paper |
|---------|-----------|----------|-------|
| English (full) | `yufeng_cv_en/yufeng.tex` | header, education, self_description, skills, experience, projects, languages, test_scores, publications, volunteer, hobbies, awards | letterpaper |
| Chinese | `yufeng_cv_cn/yufeng_cn.tex` | header, education, self_description, skills, experience, projects, hobbies, languages, publications, awards | **a4paper** |
| Academic (EN) | `yufeng_cv_en/academic/academic.tex` | header, education, experience, publications, awards | letterpaper |

Each section in a separate `.tex` file, included via `\input{}`. Shared section files (education, experience, etc.) are reused by the academic CV from the parent directory.

### Key LaTeX Commands

```
\resumeSubheading{Name}{Location}{Role}{Dates}
\resumeSubItem{Title}{Description}
\resumeItem{Title}{Description}
\resumeSubHeadingListStart ... \resumeSubHeadingListEnd
\resumeItemListStart ... \resumeItemListEnd
\resumeItemPlain{text}          \resumeHeading{}{}{}{}
```

- **EN subheading** uses `p{0.72\textwidth}` table column (wrapping long names).
- **CN subheading** uses `l` column. CN `\resumeItem` uses Chinese colon `：`.

### Chinese CV Differences

- `ctex` package with `[UTF8]` option for CJK rendering.
- No `glyphtounicode`, test_scores, or volunteer sections.
- All section titles and content in Chinese.
- `a4paper` instead of `letterpaper`.

## Docker Build

```sh
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex sourabh_bajaj_resume.tex
```

## CI

`.github/workflows/docker-image.yml` — only compiles `sourabh_bajaj_resume.tex` (the template), NOT the actual CVs. Runs on push/PR to master.

## Dockerfile

`alpine:3.21` with `texlive texlive-luatex texmf-dist-latexextra texmf-dist-fontsrecommended`.

## Notes

- `\pdfgentounicode=1` is set in EN CVs for ATS-parsable PDFs. Not present in CN CV.
- Headers include personal info (email, phone, address, LinkedIn). Update in `header.tex`.
- Publications section tracks venue/conference and co-authors.
