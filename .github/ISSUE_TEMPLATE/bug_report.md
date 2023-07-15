---
name: Bug report
about: Create a report to help us improve
title: ''
labels: ''
assignees: ''

---

**Describe the bug**
A clear and concise description of what the bug is.

**Add code of a minimal working example**
Use PDFLaTeX/LuaLaTeX/XeLaTeX for the following minimal working example:

```latex
\documentclass{…}% Try either using a standard class (preferred) or a KOMA-Script class (if needed).
\usepackage{…}
% … show only relevant preamble code …
\begin{document}
% … add only relevant lines of the document body here …
\end{document}
```

It results in the following messages from `log`-file:

```
COPY RELEVANT LINES FROM THE log-file
```

**Expected behavior**
A clear and concise description of what you expected to happen.

**Which TeX distribution?**
Usually you either use MiKTeX or TeX Live. If you are using TeX Live please also specify which version (2023, 2022, 2021, …). Overleaf provides (several versions of) TeX Live, please have a look at the first line of the `log`-file to get the version.

**Which versions of LaTeX?**
You can get version information for LaTeX from the lines

    LaTeX2e <????-??-??> patch level ?
    L3 programming layer <????-??-??>

at the beginning of the `log`-file (usually about line 8–15, the `?` should be numbers depending on the used version). 

**Which versions class and packages?**
To get the versions of class and packages, you can add `\listfiles` to the beginning of your minimal working example and copy the list from the end of the `log`-file.
