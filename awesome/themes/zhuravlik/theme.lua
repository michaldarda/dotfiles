theme = {}

theme.bg_normal     = "#f7f7f7ee"
theme.bg_focus      = "#535d6cee"
theme.bg_urgent     = "#ff0000ee"
theme.bg_minimize   = "#444444ee"

theme.fg_normal     = "#535d6c"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"

theme.font          = "DejaVu Sans Regular 9"

home          = os.getenv("HOME")
minewall      = home .. "/Pictures/alps2.jpg"

theme.wallpaper = minewall

return theme
