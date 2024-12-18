# Package `setspaceenhanced`

Copyright © 2008–2024 Markus Kohm

Release: 2024-11-12 v1.04

License: LPPL 1.3c

KOMA presents the `setspaceenhanced` package to extend the functionality of
package [`setspace`](https://ctan.org/pkg/setspace). The `setspaceenhanced` 
package is part of the *third-party enhancements* project.

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

For several years
[KOMA-Script](https://www.sourceforge.net/project/koma-script) provided a
package `scrhack`, that has been made not only to improve the compatibility of
third-party packages with KOMA-Script classes, but also to generally improve
third-party packages. The package consisted not only in the package file
`scrhack.sty` but also in several so called hacks as separate files with
extension `.hak`. In the course of splitting off former KOMA-Script packages
from the KOMA-Script collection, it was decided to create independent packages
from the individual hacks. These new independent packages then serve as
replacements for the original packages they were intended to improve. Package
`setspaceenhanced` is such an enhancement package. It provides additional
features and improvements by patching package
[`setspace`](https://ctan.org/pkg/setspace).

# Installation for Users

If you are a user, you should wait until all the package has been added to
your preferred TeX distribution. Then you can use the package manager of your
TeX distribution to install the packages.

# Unpacking for Distributors

Distributors should download [the distribution from
CTAN](https://www.ctan.org/pkg/setspaceenhanced). This consists in:

* `setspaceenhanced.dtx`
* `README.md`
* `LICENSE.md`
* `setspaceenhanced.pdf`

If distributors also want to distribute `setspaceenhanced.sty`, they can
unpack it using

    tex setspaceenhanced.dtx
	
Note, that you have to use `tex` not `latex`, `pdflatex`, `xelatex` or
`lualatex`!

Note also, that a legal distribution consists at least in:

* `setspaceenhanced.dtx`
* `README.md`

The following files are optionally, but must not be distributed without the
previous ones:

* `LICENSE.md`
* `setspaceenhanced.sty`
* `setspaceenhanced.pdf`

# Unpacking and Installation for Developers

Developers who want the current developer version of the code to be installed
for testing, should clone [the `third-party-enhancements`
repository](https://github.com/komascript/third-party-enhancements), e.g.,
using

	git clone https://github.com/komascript/third-party-enhancements.git

You can than either unpack and install all the third-party enhancements using:

	l3build install --full
	
from within the main directory of the cloned respository. For installation of
`setspaceenhanced` only run the same command from within the
`setspaceenhanced` subdirectory. For installation without the manual omit
option `--full`, but this is not recommended for developers.

# How to get the Manual

After installation you should get the user manual using:

    texdoc setspaceenhanced
	
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
be useful, please either do a pull request or [add a new
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

# Changes

Following only important changes, which are relevant for average users, will
be listed. [The complete history can be found in the
repository.](https://github.com/komascript/third-party-enhancements/commits/main/setspaceenhanced)

v1.01 2023-09-19:

- option `fontsize` has been renamed to `keepfontsize` because of
  incompatibility with KOMA-Script → [issue
  1](https://github.com/komascript/third-party-enhancements/issues/1)

