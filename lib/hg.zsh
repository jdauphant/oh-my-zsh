# get the name of the branch we are on
function hg_prompt_info() {
  branch=$(hg branch 2> /dev/null) || return
  echo "$ZSH_THEME_HG_PROMPT_PREFIX${branch}$(parse_hg_dirty)$ZSH_THEME_HG_PROMPT_SUFFIX"
}


# Checks if working tree is dirty
parse_hg_dirty() {
  if [[ -n $(hg status 2> /dev/null) ]]; then
    echo "$ZSH_THEME_HG_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_HG_PROMPT_CLEAN"
  fi
}

