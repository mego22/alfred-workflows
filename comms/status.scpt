on alfred_script(q)
  -- Don't send me alerts
  set status to q

  if application "Skype" is running then
    if status = "dnd" then
      tell application "Skype"
        send command "SET USERSTATUS DND" script name "comms"
      end tell
    end if

    if status = "away" then
      tell application "Skype"
        send command "SET USERSTATUS AWAY" script name "comms"
      end tell
    end if

    if status = "bak" then
      tell application "Skype"
        send command "SET USERSTATUS ONLINE" script name "comms"
      end tell
    end if
  end if

  if application "Slack" is running then
    if status = "away" then
      tell application "Alfred 2" to run trigger "setStatus" in workflow "fspinillo.alfredv2.slackfred" with argument "away"
    end if

    if status = "bak" then
      tell application "Alfred 2" to run trigger "setStatus" in workflow "fspinillo.alfredv2.slackfred" with argument "auto"
    end if
  end if

end alfred_script
