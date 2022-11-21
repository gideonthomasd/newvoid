# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias xi='sudo xbps-install'
alias q='xbps-query -Rs'
alias shutdown='sudo shutdown -h now'

#alias ls='exa -a -l'
alias yt7='yt-dlp -o "%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" -f "best[height>=720][ext=mp4]"'
alias yta='yt-dlp -ic --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0'
#alias s='apt-cache search'
neofetch | lolcat
#eval "$(starship init bash)"

#colorscript random
