#!/usr/bin/env texlua

--[[
   Build script for all third-party enhancements (KOMA-Script spin-off)
   Copyright © 2023 Markus Kohm
   
   This file is part of the build system of all the third-party
   enhancements.
   The third-party enhancements are KOMA-Script spin-offs.
   
   It may be distributed and/or modified under the conditions of
   the LaTeX Project Public License (LPPL), either version 1.3c of
   this license of (at your option) any later version.  The latest
   version of this license is in the file:

      https://www.latex-project.org/lppl.txt

   Note: You should not copy this file to the distribution of scrhack
         or one of the third-party enhancements.
]]

-- Bundle and modules ------------------------------------------------------
-- Note: It is intended to release the previous hacks as standalone
--       packages. Therefore, there is only a fake bundle, although
--       changes to the individual packages may also result in changes
--       to the scrhack package and may therefore require a new release
--       of scrhack.

modules = { "scrhack",
	    "floatbytocbasic",
	    "floatrowbytocbasic",
	    "listingsbytocbasic",
            "lscapeenhanced" }

-- Packaging for and upload to CTAN ----------------------------------------
-- Note: You never should package or upload from here!

ctanpkg  = "dummy"
