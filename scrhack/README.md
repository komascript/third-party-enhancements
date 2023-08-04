# Package `scrhack`

Copyright © 2008–2023 Markus Kohm

Release: 2023-07-07 v3.41

License: LPPL 1.3c

KOMA presents the compatibility package to emulate the former
[KOMA-Script](https://www.ctan.org/pkg/koma-script) package `scrhack` as part of
the *third-party enhancements* project.

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
third-party packages with [KOMA-Script](https://www.ctan.org/pkg/koma-script)
classes, but also to generally improve third-party packages. The package
consisted not only in the package file `scrhack.sty` but also in several so
called hacks as separate files with extension `.hak`. In the course of
splitting off former [KOMA-Script](https://www.ctan.org/pkg/koma-script)
packages from the [KOMA-Script](https://www.ctan.org/pkg/koma-script)
collection, it was decided to create independent packages from the individual
hacks. These new independent packages then serve as replacements for the
original packages they were intended to improve. In addition, to preserve the
functionality of loading the enhancements only when the corresponding original
package is loaded, a new `scrhack` was created to do just that.

# Installation for Users

If you are a user, you should wait until all the packages of the third-party
enhancement project have been added to your preferred TeX distribution. Then
you can use the package manager of your TeX distribution to install all the
packages at once.

Note: If you have installed a
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) before version 3.42,
      you should also update
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) using the package
      manager of your TeX distribution. Otherwise it could happen, that the
      old integrated `scrhack` of
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) is used instead of
      the new installed version.

# Unpacking for Distributors

Distributors should be aware that there is no official release of any of the
new standalone packages or the new standalone `scrhack` yet. There are only
developer versions of some parts. The first official release will hopefully
come with the next [KOMA-Script](https://www.ctan.org/pkg/koma-script)
release.

*For now, distributors should just ignore this project.*

# Unpacking and Installation for Developers

Developers who want the current developer version of the code to be installed
for testing, should clone [the `third-party-enhancements`
repository](https://github.com/komascript/third-party-enhancements), e.g.,
using

	git clone https://github.com/komascript/third-party-enhancements.git

You can than either unpack and install all the third-party enhancements using:

	l3build install --full
	
from within the main directory of the cloned respository. For installation of
`scrhack` only you could run the same command from within the
`scrhack` subdirectory. For installation without the manual omit
option `--full`, but this is not recommended for developers.

Note: Installation of `scrhack` does make sense only, if all other packages of
      the third-party enhancement project are also installed. The new 
	  `scrhack` does not work without these packages.
	  
Note: If you have already an installation of
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) before version 3.42
      in the user's texmf tree (`TEXMFHOME`), kpathsearch will usually find
      the old integrated version of `scrhack`. Therefore LaTeX also will use
      that old integrated version of `scrhack`. To prioritize the new
      standalone version of `scrhack`, you would either have to remove
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) from the user's
      texmf tree or copy `scrhack.sty` to the working directory from within
      you are running LaTeX. Instead of the
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) version before 3.42
      you can, after removing that installation, also install a
      [KOMA-Script](https://www.ctan.org/pkg/koma-script) version from 3.42,
      e.g., [the current pre-release](https://komascript.de/current) or [the
      developer version from
      SourceForge](https://sourceforge.net/p/koma-script/code/HEAD/tree/trunk/).

# How to get the Manual

After installation you should get the user manual using:

    texdoc scrhack
	
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
`scrhack` you should use [the issue
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
