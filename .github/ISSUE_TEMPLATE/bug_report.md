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
\documentclass{…}
\usepackage{…}
% … show only relevant preamble code …
\begin{document}
% … add document body here …
\end{document}
```

It results in the following messages from `log`-file:

```
COPY RELEVANT LINES FROM THE log-file
```

**Expected behavior**
A clear and concise description of what you expected to happen.

**Used versions**
Which TeX distribution are you using? Which versions of LaTeX and the used class and packages You can get version information for LaTeX from the lines

    LaTeX2e <????-??-??> patch level ?
    L3 programming layer <????-??-??>

at the beginning of the `log`-file (usually about line 8–15, the `?` should be numbers depending on the used version). To get the versions of class and packages, you can add `\listfiles` to the beginning of your minimal working example and copy the list from the end of the `log`-file.
