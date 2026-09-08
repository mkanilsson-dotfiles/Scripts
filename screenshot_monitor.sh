grim -o "$(hyprctl monitors -j | jq -r '.[] | select(.focused).name')" - | wl-copy
