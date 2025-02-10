#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# ウィンドウタイトルにカレントディレクトリパスを表示する
# if [ $ITERM_SESSION_ID ]; then
#   precmd() {
#     echo -ne "\033]0;$PWD\007"
#   }
# fi

# Node.js
# export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# ---------------- inshellisense shell plugin ----------------
[[ -f ~/.inshellisense/zsh/init.zsh ]] && source ~/.inshellisense/zsh/init.zsh

# Starship(最後)
eval "$(starship init zsh)"

