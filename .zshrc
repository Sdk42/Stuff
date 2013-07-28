## Modified by Cedric Durand
## Login   <durand_c@epita.fr>
##
## Based on Charles Vu
## Login   <vu_c@epita.fr>
##
## Based on Pierre Brunetti
## Login   <brunet_p@epita.fr>
##
## Based on .zshrc by Faouzi Jaouan
## Login   <jaouan_f@epita.fr>


export PATH="${HOME}/bin:$PATH"

############################################################
#                        HISTORY                           #
############################################################
HISTSIZE=500
SAVEHIST=500
HISTFILE=~/.history

############################################################
#                        COMPLETION                        #
############################################################
zstyle ':completion:*' verbose yes
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' completer _complete _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors "di=01;34:ma=43;30"
zstyle ':completion:*' max-errors 0
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'
zstyle :compinstall filename '~/.zshrc'
fpath=(~/bin $fpath)
autoload -U compinit
compinit -u -i

############################################################
#                        COULEURS                          #
############################################################
BLACK="%{"$'\033[01;30m'"%}"
GREEN="%{"$'\033[01;32m'"%}"
RED="%{"$'\033[01;31m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BLUE="%{"$'\033[01;34m'"%}"
PURPLE="%{"$'\033[01;35m'"%}"
BROWN="%{"$'\033[00;33m'"%}"
CYAN="%{"$'\033[00;36m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"

############################################################
#                    OPTIONS KIKOO ZSH                     #
############################################################
autoload run-help
autoload -U colors
autoload -U zmv
colors
setopt correct
setopt always_to_end
setopt hist_ignore_all_dups
setopt No_Beep
setopt complete_in_word
setopt pushd_ignore_dups
setopt append_history
setopt hist_ignore_dups
setopt autocd
setopt auto_menu
setopt list_types
setopt hash_list_all
setopt printexitvalue
unsetopt rm_star_silent
unsetopt list_ambiguous
unsetopt GLOBAL_RCS

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
############################################################
#                         ALIASES                          #
############################################################
alias c='clear'
alias ls='ls --color=auto'
alias la='ls -lah'
alias ll='ls -lh'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias sed='sed -E'
alias fsed='sed -E -f'
alias cp='cp -i'
alias mv='mv -i'
alias e='emacs -nw'
alias g='gcc -W -Wall -ansi -Werror -pedantic -g -ggdb -o'
alias mm='make clean;cls;make'
alias mmm='mm debug'
alias mc='make clean'
alias mcc='make cleanall'
alias z='zlock -immed -text "*** TEH GAME. U Just lost. ***" -pwtext "BOB <3<3"'
alias x='xterm /bin/zsh &'
alias cbzip='tar cvjf'
alias xbzip='tar xvjf'
alias cgzip='tar cvzf'
alias xgzip='tar xvzf'
alias nosoucy='~/./NoSoucy > /dev/null &'
alias quota='fs listquota'
alias sgcc='/usr/local/bin/g++42 -W -Wall -Werror -ansi -pedantic -pedantic-errors -std=c++98 '
alias du='du -h'
alias df='df -h'
alias 007='kill -9 -1'
alias kl='kill -9 -1'
alias s='cd ../'
alias ss='cd ../../'
alias ff='firefox &'
alias proj='~/scripts/projet.sh'
alias goproj='cd ing1/glp1/42sh/durand_c ; svn up ; gmake distclean ; ./configure && gmake'
alias 42='cd ~/ing1/glp1/42sh/durand_c/ && ~/scripts/42sh.sh'
alias gpp='g++42 -Wall -Wextra -Werror -pedantic -pedantic-errors -std=c++98'
alias th='thunderbird &'
alias nz='slrn'
alias BOBJETAIME='cat ~/wallpapers/bob.txt; fbsetbg -t ~/wallpapers/Bob.jpg'
alias compilssh='LD_LIBRARY_PATH=. LDPRELOAD=libboost_graph.so /u/all/acu/public/bistro/stc'
alias bison='/u/all/acu/public/bin/bison'

############################################################
#                        NETSOUL                           #
############################################################
alias ns='ns_send_msg'
alias nstheo='ns campan_t'
alias nsfabien='ns sautet_f'
alias nsloic='ns barge_l'
alias nsjustin='ns ganive_j'
alias nsvizi='ns nachba_v'
alias nspanos='ns baroud_p'
alias nsgui='ns lapotr_g'
alias nssteph='ns ladevi_s'
alias nsflo='ns chanio_f'
alias nsben='ns baldac_b'

# Forcer ouverture par extension fichier
alias -s pdf=xpdf
alias -s c=e
alias -s h=e
# Work in Goinfre
alias work='workdir=`mktemp -d /goinfre/durand_c-XXXXXX`; chmod 700 $workdir; cd $workdir; set_color -o red; echo "-Welcome to the Goinfre-"; set_color normal; pwd'
alias tigrou='workdir=`mktemp -d /goinfre/durand_c-XXXXXX`; chmod 700 $workdir; set_color -o red; echo "-Welcome to the Goinfre, Get ready to work that Fuckin Tiger Project-"; set_color normal; pwd ;  cd ~/ing1/tiger/tc1/campan_t ; svn up ; cp -r ../ $workdir ; cd $workdir/campan_t ; export CONFIG_SITE=~/config.site ; ./bootstrap && ./configure && gmake'
alias save='savedir=`basename $(pwd)`; mkdir ~/$savedir; cp -R * ~/$savedir/;set_color -o red; echo "-Folder saved-";set_color normal;'


############################################################
#                      MISC / PERSO                        #
############################################################
export EDITOR='emacs'
export LOGCHECK='60'
export MAILCHECK=0
export PAGER='most'
export WATCH='all'
export WATCHFMT='%n has %a %l from %m at %T'
export SHELL='/bin/zsh'
export NNTPSERVER='news.epita.fr'
export SVN_EDITOR='emacs -nw'
export TSOCKS_CONF_FILE="$HOME/.tsocksrc"
export PROXY='http://durand_c:Pen3WfSX@proxy.epitech.net:3128'
export http_proxy=$PROXY
export HTTP_PROXY=$PROXY
export FTP_PROXY=$PROXY
export ftp_proxy=$PROXY
autoload -U tetris
zle -N tetris
xset b off &> /dev/null
xset r rate 300 100 &> /dev/null
umask 066


############################################################
#                         PROMPT                           #
############################################################
function precmd {
	 local TERMWIDTH
    	 (( TERMWIDTH = ${COLUMNS} - 1 ))
	 #Truncate the path if it's too long.
	 PR_FILLBAR=""
    	 PR_PWDLEN=""
    	 local promptsize=${#${(%):---(Saadik@%m:%D{%H:%M:%S})---()--}}
    	 local pwdsize=${#${(%):-%.}}
    	 if [[ "$promptsize + $pwdsize" -gt $TERMWIDTH ]]; then
    	       ((PR_PWDLEN=$TERMWIDTH - $promptsize))
    	 else
		PR_FILLBAR="\${(l.(($TERMWIDTH - ($promptsize + $pwdsize)))..${PR_HBAR}.)}"
    	 fi
}

setprompt () {
	  setopt prompt_subst
	  typeset -A altchar
    	  set -A altchar ${(s..)terminfo[acsc]}
    	  PR_SET_CHARSET="%{$terminfo[enacs]%}"
    	  PR_SHIFT_IN="%{$terminfo[smacs]%}"
    	  PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
    	  PR_HBAR=${altchar[q]:--}
    	  PR_ULCORNER=${altchar[l]:--}
    	  PR_LLCORNER=${altchar[m]:--}
    	  PR_LRCORNER=${altchar[j]:--}
#    	  PR_URCORNER=${altchar[k]:--}
	  smiley="%(?,%{${GREEN}%}=%)%{${NORM}%},%{${RED}%}=(%{${NORM}%})"

	  PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
${CYAN}$PR_SHIFT_IN$PR_ULCORNER${CYAN}$PR_HBAR$PR_SHIFT_OUT${CYAN}[\
${GREEN}% Saadik${NORM}@${GREEN}%m${NORM}:${GREEN}%D{%H:%M:%S}${NORM}\
${CYAN}]$PR_SHIFT_IN$PR_HBAR${CYAN}$PR_HBAR${(e)PR_FILLBAR}${CYAN}$PR_HBAR$PR_SHIFT_OUT(\
${PURPLE}%$PR_PWDLEN<...<%.%<<\
${CYAN})$PR_SHIFT_IN$PR_HBAR${CYAN}$PR_URCORNER$PR_SHIFT_OUT${RED}\

${CYAN}$PR_SHIFT_IN$PR_LLCORNER${CYAN}$PR_HBAR$PR_SHIFT_OUT(\
${smiley}${CYAN})$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
${CYAN}$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT${RED}>>\
${NORM} '

	PS2='${CYAN}$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
${CYAN}$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT(\
${GREEN}%_${CYAN})'
}

setprompt

############################################################
#                     LAUNCHING ZSH                        #
############################################################
cd ~
#clear
alias aasm='/u/prof/pouill_a/public/aasm/x86-bsd/bin/aasm'
alias pss='echo oOHUmBliPKPO'
