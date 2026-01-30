# .bashrc

# PS1='\[\e[2m\]\u\[\e[0m\] \[\e[32;1m\]\w\[\e[0m\]\$ \[\e]0;\w <\l>\a\]'
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[2m\]\u\[\e[0m\] \[\e[93;1m\]${PS1_CMD1}\[\e[0m\] \[\e[32;1m\]\w\[\e[0m\]\$ \[\e]0;\w <\l>\a\]'

XCOMPOSEFILE=$HOME/.XCompose


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#

alias e='nautilus --browser'
alias yarn2='/usr/bin/yarn'
alias npm2='/usr/bin/npm'
alias yarn='bun'
alias npm='bun'
alias d='bun dev'
alias dd='bun run --watch .'
alias r='bun run $1'
alias portfree="sudo kill -9 \$(sudo lsof -t -i :\$1)"
alias v='bun x vite'
alias x='bun x'
alias q='sh ~/.scripts/ask_gemini.sh $*'
alias py='python3'
alias venv='source ./.venv/bin/activate'

alias yubi='ykman list > /dev/null && ssh-add -D && ssh-add -s /usr/lib64/opensc-pkcs11.so'
alias fix-chrome='rm -rf ~/.config/google-chrome/Singleton*'
alias fix-spotify='rm -f ~/.var/app/com.spotify.Client/cache/spotify/Singleton*'
alias fixa='fix-chrome; fix-spotify'
alias edit-compose='nano /usr/share/X11/locale/en_US.UTF-8/Compose'
alias logout='dbus-send --session --type=method_call --print-reply --dest=org.gnome.SessionManager /org/gnome/SessionManager org.gnome.SessionManager.Logout uint32:1'
alias o='xdg-open'

alias gl='git log --oneline --graph --decorate --all'
function gp() { git add -A; git commit -am "$*"; git push; }

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
