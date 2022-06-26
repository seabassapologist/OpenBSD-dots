# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch notify
unsetopt autocd beep extendedglob
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz add-zsh-hook

#function xterm_title_precmd () {
#	print -Pn -- '\e]2;%n@%m %~\a'
#	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
#}

#function xterm_title_preexec () {
#	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
#	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
#}

#add-zsh-hook -Uz precmd xterm_title_precmd
#add-zsh-hook -Uz preexec xterm_title_preexec

export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:magenta;secondary:default"
export TYPEWRITTEN_SYMBOL="%%"
export TYPEWRITTEN_ARROW_SYMBOL="→"
export TYPEWRITTEN_RIGHT_PROMPT_PREFIX="@ "

fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten

#source /usr/local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls="colorls -G"
alias ll="ls -l"
alias vim="nvim"
alias poweroff="doas shutdown -p now"
alias reboot="doas shutdown -r now"
alias cleanpkg="doas make clean=packages"

function rebuild_port {
	echo "make clean"
	doas make clean
	echo "make clean=packages"
	doas make clean=packages
	echo "make uninstall"
	doas make uninstall
	echo "make install"
	doas make install
}
export PLAN9=/usr/local/plan9
export PATH="$HOME/.local/bin:$HOME/go/bin:$HOME/.cabal/bin:$HOME/.cargo/bin:$PATH"
export LANG="en_US.UTF-8"
