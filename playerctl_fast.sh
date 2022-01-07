#!/bin/bash

set -euo pipefail

case "${1:-}" in
  next)
    MEMBER=Next
    ;;

  previous)
    MEMBER=Previous
    ;;

  status)
    MEMBER=Player
    ;;

  meta)
    MEMBER=Metadata
    ;;

  play)
    MEMBER=Play
    ;;

  pause)
    MEMBER=Pause
    ;;

  play-pause)
    MEMBER=PlayPause
    ;;

  *)
    echo "Usage: $0 next|previous|play|pause|play-pause"
    exit 1
    ;;
esac

echo $MEMBER
exec dbus-send                                                \
  --print-reply                                               \
  --dest="org.mpris.MediaPlayer2.spotifyd" \
  /org/mpris/MediaPlayer2                                     \
  "org.mpris.MediaPlayer2.Player.$MEMBER"
