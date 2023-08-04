# Package `standardsectioning`

Copyright © 2019–2023 Markus Kohm

Release: unreleased

License: LPPL 1.3c

KOMA presents the `standardsectioning` package to bring back deprecated,
superseded or removed implementations of
[KOMA-Script](https://www.ctan.org/pkg/koma-script) classes at the cost of
breaking corresponding new features of those classes.

----------------------------------------------------------------------------

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License, version 1.3c of the license.
The latest version of this license is in
    http://www.latex-project.org/lppl.txt
and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status "maintained".

The Current Maintainer and author of this work is Markus Kohm.

----------------------------------------------------------------------------

# Abstract

A long time ago [KOMA-Script](https://www.sourceforge.net/project/koma-script)
was more or less just a collection of replacements for the three standard
classes `article`, `book` and `report`. Replacing a standard class with a
[KOMA-Script](https://www.sourceforge.net/project/koma-script) class was easy,
even if users used a lot of additional packages. Over the years, KOMA has
added many new features and user interfaces to the classes. This also led to
completely different implementation of the sectioning commands. But some
packages depend on an implementation similar to the standard classes.

Package `standardsectioning` implements these commands with the code of the
standard classes and also deactivates parts of the KOMA-Script user interface,
which should not be used with these changes. These are more or less all
commands to configure sectioning commands. It also reverts some
internal macros of KOMA-Script.
 
# Note

Using package `standardsectioning` is only a kind of first-aid
workaround. Usually is is better not to use the incompatible package with
KOMA-Script.

This package is also a replacement of the `standardsections.hak` of
`scrhack` before version 3.42.

# Installation for Users

If you are a user, you should wait until the package has been added to your
preferred TeX distribution. Then you can use the package manager of your TeX
distribution to install all the packages.

# Unpacking for Distributors

Distributors should be aware that there is no official release of the new
standalone packages `standardsectioning` yet. There is only a developer
version. The first official release will hopefully come with the next
KOMA-Script release.

*For now, distributors should just ignore this package.*

# Unpacking and Installation for Developers

Developers who want the current developer version of the code to be installed
for testing, should clone [the `third-party-enhancements`
repository](https://github.com/komascript/third-party-enhancements), e.g.,
using

	git clone https://github.com/komascript/third-party-enhancements.git

You can than either unpack and install all the third-party enhancements using:

	l3build install --full
	
from within the main directory of the cloned respository. For installation of
`standardsectioning` only run the same command from within the
`standardsectioning` subdirectory. For installation without the manual omit
option `--full`, but this is not recommended for developers.

# How to get the Manual

After installation you should get the user manual using:

    texdoc standardsectioning
	
See the manual of your TeX distribution for more information. 

Developers or distributors can also build the manual from the source using:

	l3build doc
	
# How to Contribute

To become a contributor, e.g., do heavy testing. If you find an issue, please
report it using [the issue
tracker](https://github.com/komascript/third-party-enhancements/issues). You
can also become a developer and, e.g., make new test files to the
packages. See the [`l3build`](https://ctan.org/pkg/l3build) manual for more
information about tests. If you've created a new test and think that it would
be useful. Please either do a pull request or [add a new
issue](https://github.com/komascript/third-party-enhancements/issues/new/choose)
and include your test file.

Another kind of contribution would be to contact an author of one of the
third-party packages and convince her or him to integrate the code of the
corresponding enhancement package from this project into her or his package.

# How to Report Issues

If you think you have found a bug (or another kind of issue) using
`setspaceenhanced` you should use [the issue
tracker](https://github.com/komascript/third-party-enhancements/issues). Please
first search for similar issues already reported and maybe also already fixed
and closed. Maybe the replies to such a similar report would help you too.

If your issue is new, you should report it also using [the issue
tracker](https://github.com/komascript/third-party-enhancements/issues). Please
be kind, not only when writing the report but also when reading replies and
commenting or answering. And please always add a minimal working example and
usually the relevant parts of the `log`-file to your report. Please use the
[markdown for
code](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-and-highlighting-code-blocks)
to add such files into the text of your report. The correct language
identifier for LaTeX code would be `latex`. For `log`-files you won't need any
language identifier. Usually you should not use attachments for code or
`log`-files unless you've been asked to do so. And please note, reports should
always be self-containing. External links often break and so the report become
useles.

# How to Say Thank You for my Work

Hey, I'm doing this as a hobby. So no need to say thank you. But I'm a vain
fop, so I'm certainly up for a quick thank you by email. On komascript.de you
can find an [explanation of my wishes](https://komascript.de/wunschliste) if
you want to give more. If you don't understand German, just click to links at
that page.
