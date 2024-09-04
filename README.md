# Project *third-party enhancements*

Copyright © 2023–2024 Markus Kohm <komascript at gmx.info>

Release: See the `README.md` of the individual packages.

License: LPPL 1.3c

KOMA presents the *third-party enhancements* project.

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
replacements for the original packages they were intended to improve. In
addition, to preserve the functionality of loading the enhancements only when
the corresponding original package is loaded, a new `scrhack` was created to
do just that.

The *third-party enhancements* project combines both the new `scrhack` and the
new standalone packages.

# Organization

The project consists of several sub-folders. Each of these hosts one of the
standalone packages. These are:

* [`scrhack`](https://ctan.org/pkg/scrhack) — compatibility package to emulate the former KOMA-Script package `scrhack`.
* [`floatbytocbasic`](https://ctan.org/pkg/floatbytocbasic) — an enhancement to package
  [`float`](https://ctan.org/pkg/float) using package
  [`tocbasic`](https://ctan.org/pkg/tocbasic).
* [`floatrowbytocbasic`](https://ctan.org/pkg/floatrowbytocbasic) — an enhancement to package
  [`floatrow`](https://ctan.org/pkg/float) using package
  [`tocbasic`](https://ctan.org/pkg/tocbasic).
* `listingsbytocbasic` — an enhancement to package
  [`listings`](https://ctan.org/pkg/listings) using package
  [`tocbasic`](https://ctan.org/pkg/tocbasic) ([withdrawn without beeing
  released](https://github.com/komascript/third-party-enhancements/tree/main/listingsbytocbasic#readme)).
* [`lscapeenhanced`](https://ctan.org/pkg/lscapeenhanced) — an enhancement to package
  [`lscape`](https://ctan.org/pkg/lscape) resp. package
  [`pdflscape`](https://ctan.org/pkg/pdflscape).
* [`setspaceenhanced`](https://ctan.org/pkg/setspaceenhanced) — an enhancement to package
  [`setspace`](https://ctan.org/pkg/lscape).
* [`standardsectioning`](https://ctan.org/pkg/standardsectioning) — defining the sectioning commands of the standard
  classes.

There is also a `build.lua` for `l3build` in the main folder. However, this
should be used only to do all the checks using:

    l3build check

or do a local installation of all the packages.
	
*You should not use it for distribution, uploading etc.* See the
following section for more information.

# Installation for Users

If you are a user, you should wait until all the packages have been added to
your preferred TeX distribution. Then you can use the package manager of your
TeX distribution to install all the packages at once.

# Unpacking and Installation Distributors

Since no distribution of the entire project is planned, distributors are
explicitly referred to the individual README.md files in the subdirectories 
of the single packages.

# Unpacking and Installation for Developers

Developers who want the current developer version of the code to be installed
for testing, should clone [the `third-party-enhancements`
repository](https://github.com/komascript/third-party-enhancements), e.g.,
using

	git clone https://github.com/komascript/third-party-enhancements.git

You can than either unpack and install all the third-party enhancements using:

	l3build install --full
	
from within the main directory of the cloned respository. For installation one
of the new standalone package, run the same command from within the
corresponding subdirectory or the standalone package. For installation
without the manuals omit option `--full`, but this is not recommended for
developers.

# How to get the Manuals

After installation you should get the user manuals using:

    texdoc NAMEOFTHEPACKAGE
	
Note: You have to replace `NAMEOFTHEPACKAGE` with the name of the single
package whose manual you want to read. There isn't a manual of the whole
third-party enhancement project.

Developers or distributors can also build the manuals from the source using:

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
any of the packages you should use [the issue
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
