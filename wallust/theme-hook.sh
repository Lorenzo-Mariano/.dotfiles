#!/usr/bin/env bash

# Notify
# notify-send "New Scheme Generated!"

# GTK3
echo '@import url("wallust.css")' >|"$HOME/.config/gtk-3.0/gtk.css"

# GTK4
echo '@import url("wallust.css")' >|"$HOME/.config/gtk-4.0/gtk.css"

# Zen (Firefox-based profile)
echo '@import url("wallust.css")' >|"$HOME/.zen/fdj5cutv.Default (release)/chrome/userChrome.css"

# Yazi theme override
cat >|"$HOME/.config/yazi/theme.toml" <<'EOF'
[flavor]
light = "wallust"
dark  = "wallust"
EOF
