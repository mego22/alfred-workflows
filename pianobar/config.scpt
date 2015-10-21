set configPath to (path to home folder as text) & ".config"
set pianobarConfigPath to configPath & ":pianobar"
set pianobarConfigFile to pianobarConfigPath & ":config"

display dialog "Username:" default answer ""
set username to text returned of result

display dialog "Password:" default answer ""
set passwd to text returned of result

set usernameInfo to "user = " & username & "
"
set passwdInfo to "password = " & passwd & "
"


tell application "Finder"
  if not (exists configPath) then
    make new folder at (path to home folder) with properties {name:"testing"}
  end if

  if not (exists pianobarConfigPath) then
    make new folder at configPathPath with properties {name:"pianobar"}
    end if
  end tell


try
  set openfile to (open for access pianobarConfigFile with write permission)
  writete usernameInfo to openfile starting at eof
  write passwdInfo to openfilele starting at eof
  close openfile
end try
