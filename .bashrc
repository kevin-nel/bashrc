#
# ~/.bashrc
#

# ---- PS1 ----
export PS1="\W \[\e[0;34m\]>\[\e[0;37m\] " #mnml

# ---- my $PATH ----

PATH=$PATH:$HOME/scripts:$HOME/scripts/dmenu:$HOME/scripts/shortcuts:$HOME/scripts/colorschemes:$HOME/bin:$HOME/scripts/lemonbar:
export PATH

# ---- swap caps and escape ----
# /usr/bin/setxkbmap -option "caps:swapescape"

# --- vi mode ----
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ---- aliases ----

# fix sudo for aliases
alias sudo='sudo '

# color stuff
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'

# laziness
alias p='pwd'
alias n='nnn -e'
alias nn='nnn -e'
alias q='exit'

alias v='nvim'
alias nivm='nvim'

alias neo='neofetch --config $HOME/.config/neofetch/config.conf'
alias nfetch='neofetch --ascii_distro Arch_small --disable cpu uptime distro gpu term'
alias o='xdg-open'
alias ps='pacman -Ss'
alias pi='sudo pacman -S'
alias pr='sudo pacman -Rncs'
alias pu='sudo pacman -Syyu'

alias ytdl="youtube-dl -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --prefer-free-formats"
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'

# shutdown and logout
alias logout='sudo loginctl terminate-user kevin'
alias off='sudo shutdown now'

# screen recording no sound
alias obs='ffmpeg -video_size 1280x800 -framerate 60 -f x11grab -i :0.0+0,0
~/vids/recordings/out.mkv'


# ---- fix trash java fonts ----
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1 #make hava apps work in bspwm
JAVA_FONTS=/usr/share/fonts/TTF


# ---- increase bash history ----
HISTFILESIZE=-1
HISTSIZE=-1


# ---- fix qt styling ----
export QT_STYLE_OVERRIDE=gtk


# ---- nnn conifg ----
export LC_COLLATE="C"
export NNN_DE_FILE_MANAGER=pcmanfm
export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
export NNN_FALLBACK_OPENER=xdg-open
export NNN_COLORS='1234'

# ---- cleanup ----
export LESSHISTFILE=-

export XDG_CONFIG_HOME="$HOME"/.config/
export XDG_CACHE_HOME="$HOME"/.cache/

export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority


# ---- ImageMagick PDF fix ----
MAGICK_CONFIGURE_PATH=$XDG_CONFIG_HOME/ImageMagick


# ./scripts/todo-prompt.sh

