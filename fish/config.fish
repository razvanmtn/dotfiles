source (dirname (status --current-filename))/alias.fish

set --universal tide_left_prompt_items pwd node
set --universal tide_right_prompt_items node time

set --universal nvm_default_version v22.18.0

set --universal fish_greeting

fish_add_path $HOME/go/bin
