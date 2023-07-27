# Package `lscapeenhanced`

Copyright © 2008–2023 Markus Kohm

Release: unreleased

License: LPPL 1.3c

KOMA presents the `lscapeenhanced` package to extend the functionality of
package [`lscape`](https://ctan.org/pkg/lscape) and
[`pdflscape`](https://ctan.org/pkg/pdflscape). The `lscapeenhanced` package
is part of the *third-party enhancements* project. 

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

# ABSTRACT

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
`lscapeenhanced` is such an enhancement package. It provides additional
features of using package [`tocbasic`](https://ctan.org/pkg/tocbasic) by
patching and extending package [`lscape`](https://ctan.org/pkg/lscape) resp.
 [`pdflscape`](https://ctan.org/pkg/pdflscape).

# Unpacking and Installation for Developers and Distributors

Distributors should be aware that there is no official release of the new
standalone packages `lscapeenhanced` yet. There is only a developer
version. The first official release will hopefully come with the next
KOMA-Script release.

*For now, distributors should just ignore this package.*

Developers can use `l3build` to unpack and install all files and even the
documentation. But this cannot be done with a single `l3build` run for all of
the packages. Instead you have to go to the sub-folder of the package you want
to install and run

    l3build install
	
to locally install the package of the sub-folder without manuals, or run

    l3build install --full
	
to locally install the package of the sub-folder with manuals.

# Unpacking and Installation for Users

If you are a user, you should wait until all the packages has been added to
your preferred TeX distribution. Then you can use the package manager of your
TeX distribution to install all the packages.

# How to get the Manuals

After installation you should get the user manual using:

    texdoc lscapeenhanced
	
See the manual of your TeX distribution for more information. 

You can also build the manuals from the source. To do so, clone the source of
the whole project, go to the sub-folder `lscapeenhanced` and run:

	l3build doc
	
This will result in the file `lscapeenhanced.pdf`. This is the user manual 
and (optionally) the implemenation documentation of `lscapeenhanced`.

# How to Contribute

To become a contributor, clone the code and do heavy testing. If you find an
issue, please report it using the [issue tracker](../../../issues). You can
also, e.g., make new test files to the packages. See the
[`l3build`](https://ctan.prg/pkg/l3build) manual for more information about
tests. If you've created a new test and think that it would be useful. Please
either do a pull request or [add a new issue](../../../issues/new/choose) and
include your test file.

Another kind of contribution would be to contact an author of one of the
third-party packages and convince her or him to integrate the code of the
corresponding enhancement package from this project into her or his package.

# How to Report Issues

If you think you have found a bug (or another kind of issue) using
`lscapeenhanced` you should use the [issue tracker](../../../issues). Please
first search for similar issues already reported and maybe also already fixed
and closed. Maybe the replies to such a similar report would help you too.

If your issue is new, you should report it also using the [issue
tracker](../../../issues). Please be kind, not only when writing the report
but also when reading replies and commenting or answering. And please always
add a minimal working example and usually the relevant parts of the `log`-file
to your report. Please use the [markdown for
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
