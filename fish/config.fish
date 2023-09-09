source (dirname (status --current-filename))/alias.fish

function nvm
   bass source $HOME/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use 18
