action="{query}"

case $action in
  n | next)
    echo -n 'n' > ~/.config/pianobar/ctl
    ;;
  p | pause | resume)
    echo -n 'p' > ~/.config/pianobar/ctl
    ;;
  q | quit)
    echo -n 'q' > ~/.config/pianobar/ctl
    ;;
  + | yes)
    echo -n '+' > ~/.config/pianobar/ctl
    ;;
  - | no)
    echo -n '-' > ~/.config/pianobar/ctl
    ;;
  *)
    ;; 
esac
