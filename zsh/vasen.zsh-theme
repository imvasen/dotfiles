# Keep these as ref:         

# Note: Not used now

local icon=""

if [[ "$OSTYPE" =~ "darwin" ]]; then
  icon=" "
elif [ "$OSTYPE" = "linux-gnu" ]; then
  icon=" "
else
  icon=" "
fi

local ret_status="%B%F{%(?:green:red)}$icon%f%b"

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo "$prompt_short_dir "
}

PROMPT=' $ret_status %F{yellow}$(virtualenv_prompt_info)%f%F{white}$(get_pwd)%f$(git_prompt_info)$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%F{cyan}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{yellow}✗ %f"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}✓ %f"
