function prompt_char {
    git branch >/dev/null 2>/dev/null && echo 'git' && return
    hg root >/dev/null 2>/dev/null && echo 'hg' && return
    echo ''
}

PROMPT='%{$fg[green]%} %% '
# RPS1='%{$fg[blue]%}%~%{$reset_color%} '
RPS1='%{$fg[white]%}%2~$(git_prompt_info)$(hg_prompt_info) %{$fg_bold[blue]%}%n@%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}(git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"


ZSH_THEME_HG_PROMPT_PREFIX=" %{$fg[yellow]%}(hg:"
ZSH_THEME_HG_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[red]%} ?%{$fg[yellow]%}"
