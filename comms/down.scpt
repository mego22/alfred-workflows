on alfred_script(q)
  -- Stop services

  set serviceList to {q}

  if ((serviceList as string) is equal to "Outlook") then
    set serviceList to {"Microsoft Outlook"}
  else if ((serviceList as string) is equal to "") then
    set serviceList to {"Skype", "Slack", "Screenhero", "Microsoft Outlook"}
  end if

  repeat with serviceName in serviceList
    if application serviceName is running then
      --say serviceName
      tell application serviceName
        quit
      end tell
    end if
  end repeat

end alfred_script
