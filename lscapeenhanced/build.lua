#!/usr/bin/env texlua

--[[
   Build script for lscapeenhanced (KOMA-Script spin-off)
   Copyright © 2023–2024 Markus Kohm

   This file is part of the build system of lscapeenhanced.

   It may be distributed and/or modified under the conditions of
   the LaTeX Project Public License (LPPL), either version 1.3c of
   this license of (at your option) any later version.  The latest
   version of this license is in the file:
   
      https://www.latex-project.org/lppl.txt

   Note: You should not copy this file to the distribution of
         lscapeenhanced.
]]

release_info = "2024-04-16 v1.0"
-- Bundle and modules

module  = "lscapeenhanced"
maindir = ".."

-- Unpacking and creating documentation

unpackfiles = { "*.dtx" }
sourcefiles = { "*.dtx" }

typesetruns = 4

-- Packaging for and upload to CTAN ----------------------------------------

ctanpkg = module

uploadconfig = {
   pkg      = module,
   author   = "Markus Kohm",
   license  = "lppl1.3c",
   summary  = "an enhancement to package lscape resp. pdflscape",
   topic    = { "landscape", "layout" },
   ctanPath = "/macros/latex/contrib/"..module,
   home        = "https://github.com/komascript/third-party-enhancements",
   bugtracker  = "https://github.com/komascript/third-party-enhancements/issues",
   description = "The package solves an issue with the detection of text height, e.g., by package `scrlayer` or `showframe`, when using `landscape` environment of package `lscape` or `pdflscape`.",
   version     = release_info,
   announcement_file = "announcement-" .. release_info .. ".txt",
   note_file         = "upload-note-" .. release_info .. ".txt",
}

-- Detail how to set the version automatically
-- Example: `l3build tag --date 2023-07-15 v3.42'

tagfiles = {module..".dtx","README.md","build.lua"}

function update_tag (file,content,tagname,tagdate)
   tagname = string.gsub (tagname, "v(%d+%.%d+)", "%1")
   tagyear = string.sub (tagdate, 1, 4)
   -- fix the copyright year
   content = string.gsub (content,
			  "(©%s*%d%d%d%d)–%d%d%d%d",
			  "%1–" .. tagyear)
   content = string.gsub (content,
			  "(©%s*%d%d%d%d)%s+",
			  "%1–" .. tagyear .. " ")
   content = string.gsub (content, tagyear .. "–" .. tagyear, tagyear)
  if string.match (file, "%.dtx$") then
      return string.gsub (content,
                          "%[%d%d%d%d%-%d%d%-%d%d v[%d%.]*%d+",
                          "[" .. tagdate .. " v" .. tagname)
   elseif string.match (file, "%.md$") then
      return string.gsub (content,
                          "\nRelease: %d%d%d%d%-%d%d%-%d%d v[%d%.]*%d+  \n",
                          "\nRelease: " .. tagdate .. " v" .. tagname .. "  \n")
   elseif string.match (file, "%.lua$") then
      return string.gsub (content,
                          '\nrelease_info%s*=%s*"%d%d%d%d%-%d%d%-%d%d%s*v[%d%.]*%d+"%s*\n',
                          '\nrelease_info = "' .. tagdate .. " v" .. tagname .. '"\n')
   end
   return content
end

-- Find and run build system

kpse.set_program_name("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end

