# Project *third-party enhancements*

Copyright © 2023 Markus Kohm <komascript at gmx.info>

Release: unreleased

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
replacements for the original packages they were intended to improve. In
addition, to preserve the functionality of loading the enhancements only when
the corresponding original package is loaded, a new `scrhack` was created to
do just that.

The *third-party enhancements* project combines both the new `scrhack` and the
new standalone packages.

# Organization

The project consists of several sub-folders. Each of these hosts one of the
standalone packages. Currently these are:

* `scrhack` — compatibility package to emulate the former KOMA-Script package
  `scrhack`.
* `floatbytocbasic` — an enhancement to package
  [`float`](https://ctan.org/pkg/float) using package
  [`tocbasic`](https://ctan.org/pkg/tocbasic).
* `floatrowbytocbasic` — an enhancement to package
  [`floatrow`](https://ctan.org/pkg/float) using package
  [`tocbasic`](https://ctan.org/pkg/tocbasic).
  
There is also a `build.lua` for `l3build` in the main folder. However, this
can be used only to do all the checks using:

    l3build check
	
*You should not use it for unpacking, installation, distribution etc.* See the
following section for more information.

# Unpacking and Installation for Developers and Distributors

Distributors should be aware that there is no official release of any of the
new standalone packages or the new standalone `scrhack` yet. There are only
developer versions of some parts. The first official release will hopefully
come with the next KOMA-Script release.

*For now, distributors should just ignore this project.*

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

# How to Contribute

To become a contributor, clone the code and do heavy testing. If you find an
issue, please report it using the [issue tracker](../../issues/). You can
also, e.g., make new test files to the packages. See the
[`l3build`](https://ctan.prg/pkg/l3build) manual for more information about
tests. If you've created a new test and think that it would be useful. Please
either do a pull request or [add a new issue](../../issues/new/choose) and
include your test file.

Another kind of contribution would be to contact an author of one of the
third-party packages and convince her or him to integrate the code of the
corresponding enhancement package from this project into her or his package.

# How to Say Thank You for my Work

Hey, I'm doing this as a hobby. So no need to say thank you. But I'm a vain
fop, so I'm certainly up for a quick thank you by email. On komascript.de you
can find an [explanation of my wishes](https://komascript.de/wunschliste) if
you want to give more. If you don't understand German, just click to links at
that page.
