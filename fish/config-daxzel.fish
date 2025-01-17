
# Spacefish settings
set SPACEFISH_VI_MODE_SHOW false
set SPACEFISH_VI_MODE_SHOW false
set SPACEFISH_USER_SHOW false


# === Cursor block ===
# Set the cursor to a block
echo -e '\e[1 q'
# Reset cursor when exiting
function fish_vi_cursor; end
