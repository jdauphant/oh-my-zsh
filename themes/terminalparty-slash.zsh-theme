if [ "$(whoami)" = "root" ]
	then CARETCOLOR="red"
	PROMPT_CHAR="#"
	else CARETCOLOR="green"
	PROMPT_CHAR="%%"
fi

PROMPT='$(git_prompt_info)$(hg_prompt_info)%{$fg[$CARETCOLOR]%}$PROMPT_CHAR '
# RPS1='%{$fg[blue]%}%~%{$reset_color%} '
RPS1='%{$fg[white]%}%2~ %{$fg_bold[blue]%}%n@%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} !%{$fg[yellow]%}"


ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%}[hg:"
ZSH_THEME_HG_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[red]%} !%{$fg[yellow]%}"
