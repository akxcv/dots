#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pbcopy='clipse -c'
PS1='[\u@\h \W]\$ '

EDITOR=nvim

if uwsm check may-start; then
	exec uwsm start hyprland.desktop
fi

alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

function writetheme {
    /usr/bin/bash <<"EOF"
        source $HOME/.config/kov/themes/theme.sh
        echo "$(export -p | grep KOV_THEME | awk '{ print $3 }')" > $HOME/.config/environment.d/10-theme.conf
        echo "$(envsubst < $HOME/.config/kitty/current-theme.template.conf)" > $HOME/.config/kitty/current-theme.conf
        echo "$(envsubst < $HOME/.config/waybar/style.template.css)" > $HOME/.config/waybar/style.css

        echo "$(envsubst < $HOME/.config/rofi/themes/kov.template.rasi)" > $HOME/.config/rofi/themes/kov.rasi
EOF
}

# Dark mode
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-dark

