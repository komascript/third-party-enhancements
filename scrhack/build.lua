#!/usr/bin/env texlua

--[[
   Build script for scrhack (KOMA-Script spin-off)
   Copyright © 2023–2024 Markus Kohm
   
   This file is part of the build system of scrhack.
   scrhack is a KOMA-Script spin-off.
   
   It may be distributed and/or modified under the conditions of
   the LaTeX Project Public License (LPPL), either version 1.3c of
   this license of (at your option) any later version.  The latest
   version of this license is in the file:
   
      https://www.latex-project.org/lppl.txt
   
   Note: You should not copy this file to the distribution of scrhack.
]]

release_info = "2024-09-04 v3.42"
-- Bundle and modules ------------------------------------------------------
-- Note: It is intended to release the former hacks as standalone
--       packages. Therefore, there is no bundle, although changes to
--       the individual packages may also result in changes to
--       the scrhack package and may therefore require a new release
--       of scrhack.

module  = "scrhack"
maindir = ".."
checkdeps = {
   maindir .. "/floatbytocbasic",
   maindir .. "/floatrowbytocbasic",
   maindir .. "/lscapeenhanced",
   maindir .. "/setspaceenhanced",
   maindir .. "/standardsectioning"
}

-- Unpacking and creating documentation ------------------------------------

unpackfiles  = { "*.dtx" }
sourcefiles  = { "*.dtx" }
installfiles = { "*.sty", "*.hak" }

typesetruns = 4

-- Packaging for and upload to CTAN ----------------------------------------

ctanpkg = module

uploadconfig = {
   pkg         = module,
   author      = "Markus Kohm",
   license     = "lppl1.3c",
   summary     = "compatibility package to emulate the former KOMA-Script package scrhack",
   topic       = { "bugfix" },
   ctanPath    = "/macros/latex/contrib/"..module,
   home        = "https://github.com/komascript/third-party-enhancements",
   repository  = "https://github.com/komascript/third-party-enhancements/tree/main/scrhack",
   bugtracker  = "https://github.com/komascript/third-party-enhancements/issues",
   description = "Up to version 3.41, the `scrhack` package was part of KOMA-Script. It was originally intended to improve the compatibility of third party packages with KOMA-Script. However, most of the so-called hacks also added additional functionality to the corresponding third-party package. On the other hand, it was sometimes urgent to react to a change in such a third-party package, which was difficult to do from within a large collection like KOMA-Script. Therefore, the `scrhack` part of KOMA-Script was split into several independent packages. And the `scrhack` spin-off was made to emulate the former KOMA-Script package of the same name.",
   version     = release_info,
   announcement_file = "announcement-" .. release_info .. ".txt",
   note_file   = "upload-note-" .. release_info .. ".txt",
}

-- Detail how to set the version automatically
-- Example: `l3build tag --date 2023-07-15 v0.1'

tagfiles = { } -- module..".dtx","README.md","build.lua"}

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
      content = string.gsub (content,
			     "(\\DeclareCurrentRelease{}{)%d%d%d%d%-%d%d%-%d%d}",
			     "%1" .. tagdate .. "}")
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
                          "  %[%d%d%d%d%-%d%d%-%d%d% v[%d%.]*%d+%s+",
                          "  [" .. tagdate .. " v" .. tagname .. "\n" )
   elseif string.match (file, "%.md$") then
      return string.gsub (content,
                          "\nRelease: %d%d%d%d%-%d%d%-%d%d v[%d%.]*%d+\n",
                          "\nRelease: " .. tagdate .. " v" .. tagname .. "\n")
   elseif string.match (file, "%.lua$") then
      return string.gsub (content,
                          '\nrelease_info%s*=%s*"%d%d%d%d%-%d%d%-%d%d%s*v[%d%.]*%d+"\n',
                          '\nrelease_info = "' .. tagdate .. " v" .. tagname .. '"\n')
   end
   return content
end
