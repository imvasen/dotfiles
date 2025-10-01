eval $(/opt/homebrew/bin/brew shellenv)


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

pokemons=(
  "charizard"
  "salamence"
  "pikachu"
  "dragonite"
  "tyranitar"
  "metagross"
  "rayquaza"
  "arceus"
  "gengar"
  "gyarados"
  "garchomp"
  "alakazam"
  "mewtwo"
)

export FAV_POKEMONS="${(j:,:)pokemons}"

# Added by `rbenv init` on Mon Sep  8 13:56:30 CST 2025
eval "$(rbenv init - --no-rehash zsh)"
