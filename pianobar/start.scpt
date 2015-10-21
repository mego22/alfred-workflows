set pianobarCTLFile to (path to home folder as text) & ".config:pianobar:ctl"

tell application "System Events"
  if not (exists file pianobarCTLFile) then
    tell application "Finder"
      do shell script "mkfifo " & POSIX path of pianobarCTLFile
    end tell
  end if
end tell

tell application "iTerm"
  activate
  set pbTerm to (make new terminal)
    tell pbTerm
      set number of columns to 70
      set number of rows to 4
      set pbSession to (make new session at the end of sessions)
      tell pbSession
        set background color to "blue"
        exec command "/usr/local/bin/pianobar"
      end tell
    end tell
end tell
